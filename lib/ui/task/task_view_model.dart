import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:maho/domain/apis/funapi/funapi_domain.dart';
import 'package:maho/domain/apis/funapi/funapi_manager.dart';
import 'package:maho/domain/db/db.dart';
import 'package:maho/domain/db/task/task_dao.dart';
import 'package:maho/domain/model/task_model.dart';
import 'package:maho/domain/states/funapi_state.dart';
import 'package:tuple/tuple.dart';

class TaskViewModel implements TaskViewModelInterface {
  final TasksDaoInterface tasksDao;
  final FunApiManagerInterface api;
  final Ref ref;
  final List<Tuple2<TaskModel, CourseModel>> state;
  TaskViewModel(this.ref, this.state, this.tasksDao, this.api);
  @override
  void updateTasks() {
    api.updateDB();
  }

  @override
  List<Widget> getTaskTiles() {
    return [];
  }
}

final tasksState = StateProvider<List<Tuple2<TaskModel, CourseModel>>>(
    (ref) => ref.watch(dbStreamProvider).when(data: (data) {
          Logger().i('loaded tasks $data');
          return data;
        }, error: (err, stk) {
          return [];
        }, loading: () {
          Logger().i('loading tasks');
          return [];
        }));

abstract class TaskViewModelInterface {
  void updateTasks(); //タスクの情報を更新
  List<Widget> getTaskTiles();
}

final taskViewModelProvider = Provider((ref) {
  //Logger().i('refresh provider');
  final tasks = ref.watch(tasksState);
  final api = ref.read(funApiManagerProvider);
  final dao = TasksDao(ref.read(dbProvider));
  return TaskViewModel(ref, tasks, dao, api);
});
