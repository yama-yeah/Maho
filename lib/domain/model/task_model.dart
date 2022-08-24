import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

//userのid、passwordを保持するためのモデルです。
@freezed
abstract class CourseModel with _$CourseModel {
  //このクラスは、DBの状態を保持するクラスです。
  const factory CourseModel({
    @JsonKey(name: 'fullname') @Default('') String fullName,
    @JsonKey(name: 'shortname') @Default('') String shortName,
    @JsonKey(name: 'showshortname') @Default(true) bool isShortName,
    @JsonKey(name: 'viewurl')
    @Default('https://hope.fun.ac.jp/my/')
        String viewUrl,
    @Default('') String summary,
    //@JsonKey(name: 'startdate') @Default(0) int startDate,
    //@JsonKey(name: 'enddate') @Default(0) int endDate,
  }) = _CourseModel;
  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);
}

@freezed
abstract class TaskModel with _$TaskModel {
  @JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
  const factory TaskModel({
    required CourseModel course,
    @Default('https://hope.fun.ac.jp/my/') String url,
    @JsonKey(name: 'timesort') @Default(0) int endTime,
    @JsonKey(name: 'timestart') @Default(0) int startTime,
    required String name,
  }) = _TaskModel;
  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

@freezed
abstract class TasksModel with _$TasksModel {
  @JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
  const factory TasksModel({
    @Default([]) List<TaskModel> tasks,
    @Default('loading') String status,
  }) = _TasksModel;
  factory TasksModel.fromJson(Map<String, dynamic> json) =>
      _$TasksModelFromJson(json);
}
