import 'package:drift/drift.dart';
import 'package:maho/domain/db/db.dart';
import 'package:maho/domain/db/task/task_table.dart';
import 'package:maho/domain/model/task_model.dart';
part 'task_dao.g.dart';

@DriftAccessor(tables: [Tasks])
class TasksDao extends DatabaseAccessor<MyDatabase> with _$TasksDaoMixin {
  TasksDao(MyDatabase db) : super(db);
  Stream<List<TaskModel>> streamTasks() => select(tasks).watch();
  Future<int> upsertTasks(TaskModel entity) =>
      into(tasks).insertOnConflictUpdate(entity);
  Future<List<TaskModel>> getTasks() => select(tasks).get();
}
