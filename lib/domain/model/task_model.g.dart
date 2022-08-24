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
    );

Map<String, dynamic> _$$_CourseModelToJson(_$_CourseModel instance) =>
    <String, dynamic>{
      'fullname': instance.fullName,
      'shortname': instance.shortName,
      'showshortname': instance.isShortName,
      'viewurl': instance.viewUrl,
      'summary': instance.summary,
    };

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      course: CourseModel.fromJson(json['course'] as Map<String, dynamic>),
      url: json['url'] as String? ?? 'https://hope.fun.ac.jp/my/',
      endTime: json['timesort'] as int? ?? 0,
      startTime: json['timestart'] as int? ?? 0,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'course': instance.course.toJson(),
      'url': instance.url,
      'timesort': instance.endTime,
      'timestart': instance.startTime,
      'name': instance.name,
    };

_$_TasksModel _$$_TasksModelFromJson(Map<String, dynamic> json) =>
    _$_TasksModel(
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: json['status'] as String? ?? 'loading',
    );

Map<String, dynamic> _$$_TasksModelToJson(_$_TasksModel instance) =>
    <String, dynamic>{
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
      'status': instance.status,
    };
