import 'package:drift/drift.dart';
import 'package:maho/domain/model/task_model.dart';

@UseRowClass(TaskModel)
class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get endTime => integer()();
  IntColumn get startTime => integer()();
  TextColumn get url => text()();
  IntColumn get courseId => integer()();
}
