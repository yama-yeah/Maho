// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) {
  return _CourseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseModel {
  @JsonKey(name: 'fullname')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'shortname')
  String get shortName => throw _privateConstructorUsedError;
  @JsonKey(name: 'showshortname')
  bool get isShortName => throw _privateConstructorUsedError;
  @JsonKey(name: 'viewurl')
  String get viewUrl => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseModelCopyWith<CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) then) =
      _$CourseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'fullname') String fullName,
      @JsonKey(name: 'shortname') String shortName,
      @JsonKey(name: 'showshortname') bool isShortName,
      @JsonKey(name: 'viewurl') String viewUrl,
      String summary});
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res> implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._value, this._then);

  final CourseModel _value;
  // ignore: unused_field
  final $Res Function(CourseModel) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? shortName = freezed,
    Object? isShortName = freezed,
    Object? viewUrl = freezed,
    Object? summary = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      isShortName: isShortName == freezed
          ? _value.isShortName
          : isShortName // ignore: cast_nullable_to_non_nullable
              as bool,
      viewUrl: viewUrl == freezed
          ? _value.viewUrl
          : viewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CourseModelCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$$_CourseModelCopyWith(
          _$_CourseModel value, $Res Function(_$_CourseModel) then) =
      __$$_CourseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'fullname') String fullName,
      @JsonKey(name: 'shortname') String shortName,
      @JsonKey(name: 'showshortname') bool isShortName,
      @JsonKey(name: 'viewurl') String viewUrl,
      String summary});
}

/// @nodoc
class __$$_CourseModelCopyWithImpl<$Res> extends _$CourseModelCopyWithImpl<$Res>
    implements _$$_CourseModelCopyWith<$Res> {
  __$$_CourseModelCopyWithImpl(
      _$_CourseModel _value, $Res Function(_$_CourseModel) _then)
      : super(_value, (v) => _then(v as _$_CourseModel));

  @override
  _$_CourseModel get _value => super._value as _$_CourseModel;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? shortName = freezed,
    Object? isShortName = freezed,
    Object? viewUrl = freezed,
    Object? summary = freezed,
  }) {
    return _then(_$_CourseModel(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      isShortName: isShortName == freezed
          ? _value.isShortName
          : isShortName // ignore: cast_nullable_to_non_nullable
              as bool,
      viewUrl: viewUrl == freezed
          ? _value.viewUrl
          : viewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseModel implements _CourseModel {
  const _$_CourseModel(
      {@JsonKey(name: 'fullname') this.fullName = '',
      @JsonKey(name: 'shortname') this.shortName = '',
      @JsonKey(name: 'showshortname') this.isShortName = true,
      @JsonKey(name: 'viewurl') this.viewUrl = 'https://hope.fun.ac.jp/my/',
      this.summary = ''});

  factory _$_CourseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CourseModelFromJson(json);

  @override
  @JsonKey(name: 'fullname')
  final String fullName;
  @override
  @JsonKey(name: 'shortname')
  final String shortName;
  @override
  @JsonKey(name: 'showshortname')
  final bool isShortName;
  @override
  @JsonKey(name: 'viewurl')
  final String viewUrl;
  @override
  @JsonKey()
  final String summary;

  @override
  String toString() {
    return 'CourseModel(fullName: $fullName, shortName: $shortName, isShortName: $isShortName, viewUrl: $viewUrl, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseModel &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.shortName, shortName) &&
            const DeepCollectionEquality()
                .equals(other.isShortName, isShortName) &&
            const DeepCollectionEquality().equals(other.viewUrl, viewUrl) &&
            const DeepCollectionEquality().equals(other.summary, summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(shortName),
      const DeepCollectionEquality().hash(isShortName),
      const DeepCollectionEquality().hash(viewUrl),
      const DeepCollectionEquality().hash(summary));

  @JsonKey(ignore: true)
  @override
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      __$$_CourseModelCopyWithImpl<_$_CourseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseModelToJson(
      this,
    );
  }
}

abstract class _CourseModel implements CourseModel {
  const factory _CourseModel(
      {@JsonKey(name: 'fullname') final String fullName,
      @JsonKey(name: 'shortname') final String shortName,
      @JsonKey(name: 'showshortname') final bool isShortName,
      @JsonKey(name: 'viewurl') final String viewUrl,
      final String summary}) = _$_CourseModel;

  factory _CourseModel.fromJson(Map<String, dynamic> json) =
      _$_CourseModel.fromJson;

  @override
  @JsonKey(name: 'fullname')
  String get fullName;
  @override
  @JsonKey(name: 'shortname')
  String get shortName;
  @override
  @JsonKey(name: 'showshortname')
  bool get isShortName;
  @override
  @JsonKey(name: 'viewurl')
  String get viewUrl;
  @override
  String get summary;
  @override
  @JsonKey(ignore: true)
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  CourseModel get course => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'timesort')
  int get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestart')
  int get startTime => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res>;
  $Res call(
      {CourseModel course,
      String url,
      @JsonKey(name: 'timesort') int endTime,
      @JsonKey(name: 'timestart') int startTime,
      String name});

  $CourseModelCopyWith<$Res> get course;
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res> implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  final TaskModel _value;
  // ignore: unused_field
  final $Res Function(TaskModel) _then;

  @override
  $Res call({
    Object? course = freezed,
    Object? url = freezed,
    Object? endTime = freezed,
    Object? startTime = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseModel,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $CourseModelCopyWith<$Res> get course {
    return $CourseModelCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value));
    });
  }
}

/// @nodoc
abstract class _$$_TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$$_TaskModelCopyWith(
          _$_TaskModel value, $Res Function(_$_TaskModel) then) =
      __$$_TaskModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {CourseModel course,
      String url,
      @JsonKey(name: 'timesort') int endTime,
      @JsonKey(name: 'timestart') int startTime,
      String name});

  @override
  $CourseModelCopyWith<$Res> get course;
}

/// @nodoc
class __$$_TaskModelCopyWithImpl<$Res> extends _$TaskModelCopyWithImpl<$Res>
    implements _$$_TaskModelCopyWith<$Res> {
  __$$_TaskModelCopyWithImpl(
      _$_TaskModel _value, $Res Function(_$_TaskModel) _then)
      : super(_value, (v) => _then(v as _$_TaskModel));

  @override
  _$_TaskModel get _value => super._value as _$_TaskModel;

  @override
  $Res call({
    Object? course = freezed,
    Object? url = freezed,
    Object? endTime = freezed,
    Object? startTime = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_TaskModel(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseModel,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class _$_TaskModel implements _TaskModel {
  const _$_TaskModel(
      {required this.course,
      this.url = 'https://hope.fun.ac.jp/my/',
      @JsonKey(name: 'timesort') this.endTime = 0,
      @JsonKey(name: 'timestart') this.startTime = 0,
      required this.name});

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskModelFromJson(json);

  @override
  final CourseModel course;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey(name: 'timesort')
  final int endTime;
  @override
  @JsonKey(name: 'timestart')
  final int startTime;
  @override
  final String name;

  @override
  String toString() {
    return 'TaskModel(course: $course, url: $url, endTime: $endTime, startTime: $startTime, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskModel &&
            const DeepCollectionEquality().equals(other.course, course) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(course),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      __$$_TaskModelCopyWithImpl<_$_TaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskModelToJson(
      this,
    );
  }
}

abstract class _TaskModel implements TaskModel {
  const factory _TaskModel(
      {required final CourseModel course,
      final String url,
      @JsonKey(name: 'timesort') final int endTime,
      @JsonKey(name: 'timestart') final int startTime,
      required final String name}) = _$_TaskModel;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

  @override
  CourseModel get course;
  @override
  String get url;
  @override
  @JsonKey(name: 'timesort')
  int get endTime;
  @override
  @JsonKey(name: 'timestart')
  int get startTime;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TasksModel _$TasksModelFromJson(Map<String, dynamic> json) {
  return _TasksModel.fromJson(json);
}

/// @nodoc
mixin _$TasksModel {
  List<TaskModel> get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksModelCopyWith<TasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksModelCopyWith<$Res> {
  factory $TasksModelCopyWith(
          TasksModel value, $Res Function(TasksModel) then) =
      _$TasksModelCopyWithImpl<$Res>;
  $Res call({List<TaskModel> tasks});
}

/// @nodoc
class _$TasksModelCopyWithImpl<$Res> implements $TasksModelCopyWith<$Res> {
  _$TasksModelCopyWithImpl(this._value, this._then);

  final TasksModel _value;
  // ignore: unused_field
  final $Res Function(TasksModel) _then;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_TasksModelCopyWith<$Res>
    implements $TasksModelCopyWith<$Res> {
  factory _$$_TasksModelCopyWith(
          _$_TasksModel value, $Res Function(_$_TasksModel) then) =
      __$$_TasksModelCopyWithImpl<$Res>;
  @override
  $Res call({List<TaskModel> tasks});
}

/// @nodoc
class __$$_TasksModelCopyWithImpl<$Res> extends _$TasksModelCopyWithImpl<$Res>
    implements _$$_TasksModelCopyWith<$Res> {
  __$$_TasksModelCopyWithImpl(
      _$_TasksModel _value, $Res Function(_$_TasksModel) _then)
      : super(_value, (v) => _then(v as _$_TasksModel));

  @override
  _$_TasksModel get _value => super._value as _$_TasksModel;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_$_TasksModel(
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class _$_TasksModel implements _TasksModel {
  const _$_TasksModel({final List<TaskModel> tasks = const []})
      : _tasks = tasks;

  factory _$_TasksModel.fromJson(Map<String, dynamic> json) =>
      _$$_TasksModelFromJson(json);

  final List<TaskModel> _tasks;
  @override
  @JsonKey()
  List<TaskModel> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksModel(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasksModel &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  _$$_TasksModelCopyWith<_$_TasksModel> get copyWith =>
      __$$_TasksModelCopyWithImpl<_$_TasksModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TasksModelToJson(
      this,
    );
  }
}

abstract class _TasksModel implements TasksModel {
  const factory _TasksModel({final List<TaskModel> tasks}) = _$_TasksModel;

  factory _TasksModel.fromJson(Map<String, dynamic> json) =
      _$_TasksModel.fromJson;

  @override
  List<TaskModel> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_TasksModelCopyWith<_$_TasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}
