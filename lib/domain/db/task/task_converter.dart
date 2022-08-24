import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:maho/domain/model/task_model.dart';

class TaskConverter extends TypeConverter<TaskModel, String> {
  @override
  TaskModel fromSql(String fromDb) {
    return TaskModel.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String toSql(TaskModel value) {
    return json.encode(value.toJson());
  }
}
