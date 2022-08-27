import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/db/db.dart';
import 'package:maho/domain/db/task/task_dao.dart';
import 'package:maho/domain/model/task_model.dart';

void main() {
  final continer = ProviderContainer();
  test('tasks dao test', () async {
    final db = continer.read(dbProvider);
    final dao = TasksDao(db);
    dao.upsertTasks(
      const TaskModel(
          url: 'https://test.test',
          endTime: 0,
          startTime: 0,
          name: 'test',
          id: -1,
          courseId: -1),
    );
    final tasks = await dao.getTasks();
    print(tasks[0].toJson());
  });
}
