import 'package:drift/drift.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/db/task/task_table.dart';
import 'package:maho/domain/model/task_model.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
part 'db.g.dart';

@DriftDatabase(tables: [Tasks])
class MyDatabase extends _$MyDatabase
    implements TasksDatabaseInterface, CoursesDatabaseInterface {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

abstract class TasksDatabaseInterface {}

abstract class CoursesDatabaseInterface {}

final dbProvider = Provider.autoDispose<MyDatabase>((ref) {
  final db = MyDatabase();
  ref.onDispose(() {
    db.close();
  });
  return db;
});
