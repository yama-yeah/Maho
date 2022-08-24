import 'package:drift/drift.dart';
import 'package:maho/domain/model/task_model.dart';

@UseRowClass(TaskModel)
class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  DateTimeColumn get endTime => dateTime()();
  DateTimeColumn get startTime => dateTime()();
  TextColumn get url => text()();
  IntColumn get courseId => integer()();
}
