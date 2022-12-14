import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:maho/domain/apis/funapi/funapi_domain.dart';
import 'package:maho/domain/data/secure_storage.dart';
import 'package:maho/domain/data/shared_pref.dart';
import 'package:maho/domain/db/course/course_dao.dart';
import 'package:maho/domain/db/task/task_dao.dart';
import 'package:maho/domain/model/fun_model.dart';
import 'package:maho/domain/states/funapi_state.dart';
import 'package:maho/utils/date_util.dart';
import 'package:maho/utils/service_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class FunApiManagerInterface {
  final isLoaded = false;
  Future<bool> updateUser(FunUserModel user);
  Future<void> updateDB();
}

class FakeFunApiManagaer implements FunApiManagerInterface {
  @override
  bool get isLoaded => false;

  @override
  Future<void> updateDB() async {}

  @override
  Future<bool> updateUser(FunUserModel user) async {
    return false;
  }
}

class FunApiManager implements FunApiManagerInterface {
  final FunApiInterface _api;
  final Ref _ref;
  final SharedPreferences _prefs;
  final KeyStoreInterface _keyStore;
  final TasksDaoInterface _tasksDao;
  final CoursesDaoInterface _coursesDao;
  FunApiManager(
    this._ref,
    this._api,
    this._prefs,
    this._keyStore,
    this._tasksDao,
    this._coursesDao,
  );

  @override
  bool get isLoaded => true;

  @override
  Future<void> updateDB() async {
    Logger().wtf('now updating');
    final user = _ref.read(funApiUserStateProvider);
    final rawTasks = await _api.getTasks(user);
    final old = await _tasksDao.getTasks();
    final tasksIds = [];
    //終わったタスクを削除
    for (var element in rawTasks.tasks) {
      tasksIds.add(element.id);
    }
    for (var element in old) {
      bool f = true;
      if (!tasksIds.contains(element.id)) {
        _tasksDao.deleteTask(element.id);
      } else if (unixTime2Date(element.endTime).compareTo(DateTime.now()) ==
          -1) {
        _tasksDao.deleteTask(element.id);
      } else {
        f = !f;
      }
      if (f) {
        Logger().wtf('deleted task! id is ${element.id}');
      }
    }
    //courseこみのtaskを取得
    for (var rawTask in rawTasks.tasks) {
      final task = raw2task(rawTask);
      _tasksDao.insertTask(task);
      //task更新
      _coursesDao.insertCourse(rawTask.course);
      //course更新
    }
    updateApiHealthState(rawTasks.status);
    updateLoggedInState(rawTasks.status);
    Logger().wtf('Complete update DB');
  }

  @override
  Future<bool> updateUser(FunUserModel user) async {
    final status = await _api.login(user);
    final flag = status == 'success';
    if (flag) {
      _ref.read(funApiUserStateProvider.notifier).state = user;
      _keyStore.setJson('key', user.toJson());
      //ユーザ情報の保存
      updateLoggedInState(status);
    }
    updateApiHealthState(status);
    return flag;
  }

  void updateLoggedInState(String status) {
    _ref.read(funApiLoggedInStateProvider.notifier).state =
        !(status == 'failed');
    _prefs.setBool('isLoggedIn', !(status == 'failed'));
  }

  void updateApiHealthState(String status) {
    _ref.read(funApiHealthStateProvider.notifier).state =
        status != 'error' ? 'healthy' : 'sick';
  }

  void initialize() async {
    _ref.read(funApiUserStateProvider.notifier).state =
        FunUserModel.fromJson(await _keyStore.getJson('key'));
    final isLoggedIn = _prefs.getBool('isLoggedIn');
    if (isLoggedIn != null) {
      Logger().i('This Account is Logged In!');
      _ref.read(funApiLoggedInStateProvider.notifier).state = isLoggedIn;
    }
  }
}

final futureFunApiManagerProvider = FutureProvider((ref) async {
  final prefs = await ref.watch(getPrefInstanceProvider.future);
  final manager = FunApiManager(
    ref,
    FunApi(),
    prefs,
    ref.read(keyStoreProvider),
    ref.read(tasksDaoProvider),
    ref.read(coursesDaoProvider),
  );
  manager.initialize();
  return manager;
});

final funApiManagerProvider = Provider((ref) {
  return ref.watch(futureFunApiManagerProvider).when(
        data: (data) => data,
        error: (err, stk) => FakeFunApiManagaer(),
        loading: () => FakeFunApiManagaer(),
      );
});
