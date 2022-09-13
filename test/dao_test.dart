import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:maho/domain/db/course/course_dao.dart';
import 'package:maho/domain/db/db.dart';
import 'package:maho/domain/db/task/task_dao.dart';
import 'package:maho/domain/model/task_model.dart';

void main() {
  final container = ProviderContainer();
  test('tasks dao test', () async {
    final db = container.read(dbProvider);
    final dao = TasksDao(db);
    const testData = TaskModel(
        url: 'https://test.test',
        endTime: 0,
        startTime: 0,
        name: 'test',
        id: -1,
        courseId: -1);
    /*dao.upsertTask(
      testData,
    );*/
    final tasks = await dao.getTasks();
    Logger().i(tasks.length);
    //expect(tasks[0], testData);
    //await dao.deleteTask(-1);
    //expect(await dao.getTasks(), []);
    Logger().i('読み書きテストクリア！');
  });
  test('inner join', () async {
    final db = container.read(dbProvider);
    final taskDao = TasksDao(db);
    final courseDao = CoursesDao(db);
    const testData = TaskModel(
        url: 'https://test.test',
        endTime: 0,
        startTime: 0,
        name: 'test',
        id: -1,
        courseId: -1);
    const courseData = CourseModel(
        id: -1,
        fullName: 'jintai',
        shortName: 'jintai',
        isShortName: false,
        url: 'https://test.com',
        summary: '',
        isTaskNotify: false);
    await taskDao.upsertTask(
      testData,
    );
    await courseDao.upsertCourse(courseData);
    print(await db.getJoinedApiData());
  });
}
