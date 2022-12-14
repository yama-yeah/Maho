import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:maho/domain/apis/funapi/funapi_manager.dart';
import 'package:maho/domain/db/db.dart';
import 'package:maho/domain/db/task/task_dao.dart';
import 'package:maho/domain/model/task_model.dart';
import 'package:maho/utils/notification_util.dart';
import 'package:tuple/tuple.dart';

class TaskViewModel implements TaskViewModelInterface {
  final TasksDaoInterface tasksDao;
  final FunApiManagerInterface api;
  final Ref ref;
  final List<Tuple2<TaskModel, CourseModel>> state;
  TaskViewModel(this.ref, this.state, this.tasksDao, this.api);
  @override
  Future<void> updateTasks() async {
    await api.updateDB();
  }

  @override
  List<Widget> getTaskTiles() {
    return [];
  }
}

final tasksState = StateProvider<List<Tuple2<TaskModel, CourseModel>>>(
  (ref) {
    final util = ref.watch(notificationUtilsProvider);
    return ref.watch(dbStreamProvider).when(data: (data) {
      Logger().i('loaded tasks $data');
      util.createTaskNotifications(data);
      return data;
    }, error: (err, stk) {
      return [];
    }, loading: () {
      Logger().i('loading tasks');
      return [];
    });
  },
);

abstract class TaskViewModelInterface {
  Future<void> updateTasks(); //タスクの情報を更新
  List<Widget> getTaskTiles();
}

final taskViewModelProvider = Provider((ref) {
  //Logger().i('refresh provider');
  final tasks = ref.watch(tasksState);
  final api = ref.read(funApiManagerProvider);
  final dao = TasksDao(ref.read(dbProvider));
  return TaskViewModel(ref, tasks, dao, api);
});
