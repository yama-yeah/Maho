import 'package:drift/drift.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/db/course/course_table.dart';
import 'package:maho/domain/db/db.dart';
import 'package:maho/domain/model/task_model.dart';

part 'course_dao.g.dart';

@DriftAccessor(tables: [Courses])
class CoursesDao extends DatabaseAccessor<MyDatabase>
    with _$CoursesDaoMixin
    implements CoursesDaoInterface {
  CoursesDao(MyDatabase db) : super(db);
  Stream<List<CourseModel>> streamCourses() => select(courses).watch();
  @override
  Future<int> upsertCourse(CourseModel entity) =>
      into(courses).insertOnConflictUpdate(entity);
  Future<List<CourseModel>> getCourses() => select(courses).get();
  @override
  Future<CourseModel> getCourse(int id) =>
      (select(courses)..where((tbl) => tbl.id.equals(id))).getSingle();
  Future<void> deleteCourse(int id) =>
      (delete(courses)..where((tbl) => tbl.id.equals(id))).go();

  @override
  Future<int> insertCourse(CourseModel entity) => into(courses).insert(entity,
      onConflict: DoUpdate(
        (old) => CoursesCompanion.custom(
          fullName: old.fullName,
          id: old.id,
          isShortName: old.isShortName,
          isTaskNotify: old.isTaskNotify,
          shortName: old.shortName,
          summary: old.summary,
          url: old.url,
        ),
      ));
}

abstract class CoursesDaoInterface {
  Future<CourseModel> getCourse(int id);
  Future<int> upsertCourse(CourseModel entity);
  Future<int> insertCourse(CourseModel entity);
}

final coursesDaoProvider = Provider((ref) => CoursesDao(ref.read(dbProvider)));
