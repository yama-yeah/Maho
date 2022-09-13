import 'package:drift/drift.dart';
import 'package:maho/domain/model/task_model.dart';

@UseRowClass(CourseModel)
class Courses extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get fullName => text()();
  TextColumn get shortName => text()();
  TextColumn get url => text()();
  TextColumn get summary => text()();
  BoolColumn get isTaskNotify => boolean()();
  BoolColumn get isShortName => boolean()();
}
