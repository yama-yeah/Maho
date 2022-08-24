// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseModel _$$_CourseModelFromJson(Map<String, dynamic> json) =>
    _$_CourseModel(
      fullName: json['fullname'] as String? ?? '',
      shortName: json['shortname'] as String? ?? '',
      isShortName: json['showshortname'] as bool? ?? true,
      viewUrl: json['viewurl'] as String? ?? 'https://hope.fun.ac.jp/my/',
      summary: json['summary'] as String? ?? '',
      id: json['id'] as int,
      isNotify: json['isNotify'] as bool? ?? true,
    );

Map<String, dynamic> _$$_CourseModelToJson(_$_CourseModel instance) =>
    <String, dynamic>{
      'fullname': instance.fullName,
      'shortname': instance.shortName,
      'showshortname': instance.isShortName,
      'viewurl': instance.viewUrl,
      'summary': instance.summary,
      'id': instance.id,
      'isNotify': instance.isNotify,
    };

_$_RawTaskModel _$$_RawTaskModelFromJson(Map<String, dynamic> json) =>
    _$_RawTaskModel(
      course: CourseModel.fromJson(json['course'] as Map<String, dynamic>),
      url: json['url'] as String? ?? 'https://hope.fun.ac.jp/my/',
      endTime: json['timesort'] as int? ?? 0,
      startTime: json['timestart'] as int? ?? 0,
      name: json['name'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_RawTaskModelToJson(_$_RawTaskModel instance) =>
    <String, dynamic>{
      'course': instance.course.toJson(),
      'url': instance.url,
      'timesort': instance.endTime,
      'timestart': instance.startTime,
      'name': instance.name,
      'id': instance.id,
    };

_$_RawTasksModel _$$_RawTasksModelFromJson(Map<String, dynamic> json) =>
    _$_RawTasksModel(
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) => RawTaskModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: json['status'] as String? ?? 'loading',
    );

Map<String, dynamic> _$$_RawTasksModelToJson(_$_RawTasksModel instance) =>
    <String, dynamic>{
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
      'status': instance.status,
    };

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      url: json['url'] as String,
      endTime: DateTime.parse(json['endTime'] as String),
      startTime: DateTime.parse(json['startTime'] as String),
      name: json['name'] as String,
      id: json['id'] as int,
      isNotify: json['isNotify'] as bool? ?? true,
      courseId: json['courseId'] as int,
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'endTime': instance.endTime.toIso8601String(),
      'startTime': instance.startTime.toIso8601String(),
      'name': instance.name,
      'id': instance.id,
      'isNotify': instance.isNotify,
      'courseId': instance.courseId,
    };
