import 'package:drift/drift.dart' as d;
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/db/db.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

//userのid、passwordを保持するためのモデルです。
@freezed
class CourseModel with _$CourseModel {
  //このクラスは、DBの状態を保持するクラスです。
  const factory CourseModel({
    @JsonKey(name: 'fullname') @Default('') String fullName,
    @JsonKey(name: 'shortname') @Default('') String shortName,
    @JsonKey(name: 'showshortname') @Default(true) bool isShortName,
    @JsonKey(name: 'viewurl') @Default('https://hope.fun.ac.jp/my/') String url,
    @Default('') String summary,
    required int id,
    @Default(true) bool isTaskNotify,
    //@JsonKey(name: 'startdate') @Default(0) int startDate,
    //@JsonKey(name: 'enddate') @Default(0) int endDate,
  }) = _CourseModel;
  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);
}

@freezed
class CoursesModel with _$CoursesModel {
  const factory CoursesModel({
    @Default({}) Set<CourseModel> courses,
    @Default('loading') String status,
  }) = _CoursesMode;
}

@freezed
class RawTaskModel with _$RawTaskModel {
  @JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
  const factory RawTaskModel({
    required CourseModel course,
    @Default('https://hope.fun.ac.jp/my/') String url,
    @JsonKey(name: 'timesort') @Default(0) int endTime,
    @JsonKey(name: 'timestart') @Default(0) int startTime,
    required String name,
    required int id,
  }) = _RawTaskModel;
  factory RawTaskModel.fromJson(Map<String, dynamic> json) =>
      _$RawTaskModelFromJson(json);
}

@freezed
abstract class RawTasksModel with _$RawTasksModel {
  @JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
  const factory RawTasksModel({
    @Default([]) List<RawTaskModel> tasks,
    @Default('loading') String status,
  }) = _RawTasksModel;
  factory RawTasksModel.fromJson(Map<String, dynamic> json) =>
      _$RawTasksModelFromJson(json);
}

@freezed
class TaskModel with _$TaskModel implements d.Insertable<TaskModel> {
  const factory TaskModel({
    required String url,
    required int endTime,
    required int startTime,
    required String name,
    required int id,
    @Default(true) bool isNotify,
    required int courseId,
  }) = _TaskModel;
  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
  const TaskModel._();
  //@With<d.Insertable<TaskModel>>()
  @override
  Map<String, d.Expression> toColumns(bool nullToAbsent) {
    return TasksCompanion(
      id: d.Value(id),
      name: d.Value(name),
      endTime: d.Value(endTime),
      startTime: d.Value(startTime),
      url: d.Value(url),
      courseId: d.Value(courseId),
    ).toColumns(nullToAbsent);
  }
}

@freezed
abstract class TasksModel with _$TasksModel {
  const factory TasksModel({
    @Default('loading') String status,
    @Default([]) List<TaskModel> tasks,
  }) = _TasksModel;
  factory TasksModel.fromJson(Map<String, dynamic> json) =>
      _$TasksModelFromJson(json);
}
