import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:maho/domain/model/task_model.dart';

Map<String, dynamic> json2map(http.Response json) {
  String str = utf8.decode(json.bodyBytes);
  return jsonDecode(str);
}

TaskModel raw2task(RawTaskModel raw) {
  return TaskModel(
      url: raw.url,
      endTime: raw.endTime,
      startTime: raw.startTime,
      name: raw.name,
      id: raw.id,
      courseId: raw.course.id);
}
