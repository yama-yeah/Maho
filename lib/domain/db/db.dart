import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:maho/domain/db/course/course_table.dart';
import 'package:maho/domain/db/task/task_table.dart';
import 'package:maho/domain/model/task_model.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:tuple/tuple.dart';

part 'db.g.dart';

@DriftDatabase(tables: [Tasks, Courses])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());
  @override
  int get schemaVersion => 1;
  Future<List<Tuple2<TaskModel, CourseModel>>> getJoinedApiData() {
    final query = select(tasks).join([
      //innerJoin(tasks, tasks.courseId.equalsExp(courses.id)),
      innerJoin(courses, courses.id.equalsExp(tasks.courseId)),
    ]);
    return query
        .map((p0) => Tuple2(p0.readTable(tasks), p0.readTable(courses)))
        .get();
  }

  Future<Tuple2<TaskModel, CourseModel>> getJoinedSingleApiData(int id) {
    final query = select(tasks).join([
      //innerJoin(tasks, tasks.courseId.equalsExp(courses.id)),
      innerJoin(courses, courses.id.equalsExp(tasks.courseId)),
    ]);
    return (query..where(tasks.id.equals(id)))
        .map((p0) => Tuple2(p0.readTable(tasks), p0.readTable(courses)))
        .getSingle();
  }

  Stream<List<Tuple2<TaskModel, CourseModel>>> streamJoinedApiData() {
    final query = select(tasks).join([
      //innerJoin(tasks, tasks.courseId.equalsExp(courses.id)),
      innerJoin(courses, courses.id.equalsExp(tasks.courseId)),
    ]);
    query.orderBy([OrderingTerm.asc(tasks.endTime)]);
    return query
        .map((p0) => Tuple2(p0.readTable(tasks), p0.readTable(courses)))
        .watch();
  }

  Future reset() async {
    await delete(tasks).go();
    await delete(courses).go();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'mahoDB.sqlite'));
    Logger().i('Database file path -> $file');
    return NativeDatabase(file);
  });
}

final dbProvider = Provider<MyDatabase>((ref) {
  final db = MyDatabase();
  ref.onDispose(() {
    db.close();
  });
  return db;
});

final dbStreamProvider =
    StreamProvider((ref) => ref.read(dbProvider).streamJoinedApiData());
