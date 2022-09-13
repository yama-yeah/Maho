import 'dart:async';

import 'package:drift/drift.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/db/db.dart';
import 'package:maho/domain/db/task/task_table.dart';
import 'package:maho/domain/model/task_model.dart';

part 'task_dao.g.dart';

@DriftAccessor(tables: [Tasks])
class TasksDao extends DatabaseAccessor<MyDatabase>
    with _$TasksDaoMixin
    implements TasksDaoInterface {
  TasksDao(MyDatabase db) : super(db);
  Stream<List<TaskModel>> streamTasks() => select(tasks).watch();
  @override
  Future<int> upsertTask(TaskModel entity) =>
      into(tasks).insertOnConflictUpdate(entity);
  @override
  Future<List<TaskModel>> getTasks() => select(tasks).get();
  @override
  Future<TaskModel> getTask(int id) =>
      (select(tasks)..where((tbl) => tbl.id.equals(id))).getSingle();
  //Future<List<TaskModel>> getTasks() => select(tasks).get();

  @override
  Future<void> deleteTask(int id) =>
      (delete(tasks)..where((tbl) => tbl.id.equals(id))).go();

  @override
  Future<int> insertTask(TaskModel entity) => into(tasks).insert(entity,
      onConflict: DoUpdate((old) => TasksCompanion.custom(
            id: old.id,
            name: old.name,
            endTime: old.endTime,
            startTime: old.startTime,
            url: old.url,
            courseId: old.courseId,
            isNotify: old.isNotify,
          )));
}

final tasksProvider = StreamProvider((ref) {
  return TasksDao(ref.read(dbProvider)).streamTasks();
});

abstract class TasksDaoInterface {
  Future<int> upsertTask(TaskModel entity);
  Future<TaskModel> getTask(int id);
  Future insertTask(TaskModel entity);
  Future<List<TaskModel>> getTasks();
  Future<void> deleteTask(int id);
}

final tasksDaoProvider = Provider((ref) => TasksDao(ref.read(dbProvider)));
