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
  int get id => throw _privateConstructorUsedError;
  bool get isNotify => throw _privateConstructorUsedError;

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
      String summary,
      int id,
      bool isNotify});
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
    Object? id = freezed,
    Object? isNotify = freezed,
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isNotify: isNotify == freezed
          ? _value.isNotify
          : isNotify // ignore: cast_nullable_to_non_nullable
              as bool,
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
      String summary,
      int id,
      bool isNotify});
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
    Object? id = freezed,
    Object? isNotify = freezed,
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isNotify: isNotify == freezed
          ? _value.isNotify
          : isNotify // ignore: cast_nullable_to_non_nullable
              as bool,
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
      this.summary = '',
      required this.id,
      this.isNotify = true});

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
  final int id;
  @override
  @JsonKey()
  final bool isNotify;

  @override
  String toString() {
    return 'CourseModel(fullName: $fullName, shortName: $shortName, isShortName: $isShortName, viewUrl: $viewUrl, summary: $summary, id: $id, isNotify: $isNotify)';
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
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isNotify, isNotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(shortName),
      const DeepCollectionEquality().hash(isShortName),
      const DeepCollectionEquality().hash(viewUrl),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isNotify));

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
      final String summary,
      required final int id,
      final bool isNotify}) = _$_CourseModel;

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
  int get id;
  @override
  bool get isNotify;
  @override
  @JsonKey(ignore: true)
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RawTaskModel _$RawTaskModelFromJson(Map<String, dynamic> json) {
  return _RawTaskModel.fromJson(json);
}

/// @nodoc
mixin _$RawTaskModel {
  CourseModel get course => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'timesort')
  int get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestart')
  int get startTime => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RawTaskModelCopyWith<RawTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawTaskModelCopyWith<$Res> {
  factory $RawTaskModelCopyWith(
          RawTaskModel value, $Res Function(RawTaskModel) then) =
      _$RawTaskModelCopyWithImpl<$Res>;
  $Res call(
      {CourseModel course,
      String url,
      @JsonKey(name: 'timesort') int endTime,
      @JsonKey(name: 'timestart') int startTime,
      String name,
      int id});

  $CourseModelCopyWith<$Res> get course;
}

/// @nodoc
class _$RawTaskModelCopyWithImpl<$Res> implements $RawTaskModelCopyWith<$Res> {
  _$RawTaskModelCopyWithImpl(this._value, this._then);

  final RawTaskModel _value;
  // ignore: unused_field
  final $Res Function(RawTaskModel) _then;

  @override
  $Res call({
    Object? course = freezed,
    Object? url = freezed,
    Object? endTime = freezed,
    Object? startTime = freezed,
    Object? name = freezed,
    Object? id = freezed,
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_RawTaskModelCopyWith<$Res>
    implements $RawTaskModelCopyWith<$Res> {
  factory _$$_RawTaskModelCopyWith(
          _$_RawTaskModel value, $Res Function(_$_RawTaskModel) then) =
      __$$_RawTaskModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {CourseModel course,
      String url,
      @JsonKey(name: 'timesort') int endTime,
      @JsonKey(name: 'timestart') int startTime,
      String name,
      int id});

  @override
  $CourseModelCopyWith<$Res> get course;
}

/// @nodoc
class __$$_RawTaskModelCopyWithImpl<$Res>
    extends _$RawTaskModelCopyWithImpl<$Res>
    implements _$$_RawTaskModelCopyWith<$Res> {
  __$$_RawTaskModelCopyWithImpl(
      _$_RawTaskModel _value, $Res Function(_$_RawTaskModel) _then)
      : super(_value, (v) => _then(v as _$_RawTaskModel));

  @override
  _$_RawTaskModel get _value => super._value as _$_RawTaskModel;

  @override
  $Res call({
    Object? course = freezed,
    Object? url = freezed,
    Object? endTime = freezed,
    Object? startTime = freezed,
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_RawTaskModel(
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class _$_RawTaskModel implements _RawTaskModel {
  const _$_RawTaskModel(
      {required this.course,
      this.url = 'https://hope.fun.ac.jp/my/',
      @JsonKey(name: 'timesort') this.endTime = 0,
      @JsonKey(name: 'timestart') this.startTime = 0,
      required this.name,
      required this.id});

  factory _$_RawTaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_RawTaskModelFromJson(json);

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
  final int id;

  @override
  String toString() {
    return 'RawTaskModel(course: $course, url: $url, endTime: $endTime, startTime: $startTime, name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RawTaskModel &&
            const DeepCollectionEquality().equals(other.course, course) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(course),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_RawTaskModelCopyWith<_$_RawTaskModel> get copyWith =>
      __$$_RawTaskModelCopyWithImpl<_$_RawTaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RawTaskModelToJson(
      this,
    );
  }
}

abstract class _RawTaskModel implements RawTaskModel {
  const factory _RawTaskModel(
      {required final CourseModel course,
      final String url,
      @JsonKey(name: 'timesort') final int endTime,
      @JsonKey(name: 'timestart') final int startTime,
      required final String name,
      required final int id}) = _$_RawTaskModel;

  factory _RawTaskModel.fromJson(Map<String, dynamic> json) =
      _$_RawTaskModel.fromJson;

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
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_RawTaskModelCopyWith<_$_RawTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RawTasksModel _$RawTasksModelFromJson(Map<String, dynamic> json) {
  return _RawTasksModel.fromJson(json);
}

/// @nodoc
mixin _$RawTasksModel {
  List<RawTaskModel> get tasks => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RawTasksModelCopyWith<RawTasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawTasksModelCopyWith<$Res> {
  factory $RawTasksModelCopyWith(
          RawTasksModel value, $Res Function(RawTasksModel) then) =
      _$RawTasksModelCopyWithImpl<$Res>;
  $Res call({List<RawTaskModel> tasks, String status});
}

/// @nodoc
class _$RawTasksModelCopyWithImpl<$Res>
    implements $RawTasksModelCopyWith<$Res> {
  _$RawTasksModelCopyWithImpl(this._value, this._then);

  final RawTasksModel _value;
  // ignore: unused_field
  final $Res Function(RawTasksModel) _then;

  @override
  $Res call({
    Object? tasks = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<RawTaskModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RawTasksModelCopyWith<$Res>
    implements $RawTasksModelCopyWith<$Res> {
  factory _$$_RawTasksModelCopyWith(
          _$_RawTasksModel value, $Res Function(_$_RawTasksModel) then) =
      __$$_RawTasksModelCopyWithImpl<$Res>;
  @override
  $Res call({List<RawTaskModel> tasks, String status});
}

/// @nodoc
class __$$_RawTasksModelCopyWithImpl<$Res>
    extends _$RawTasksModelCopyWithImpl<$Res>
    implements _$$_RawTasksModelCopyWith<$Res> {
  __$$_RawTasksModelCopyWithImpl(
      _$_RawTasksModel _value, $Res Function(_$_RawTasksModel) _then)
      : super(_value, (v) => _then(v as _$_RawTasksModel));

  @override
  _$_RawTasksModel get _value => super._value as _$_RawTasksModel;

  @override
  $Res call({
    Object? tasks = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_RawTasksModel(
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<RawTaskModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class _$_RawTasksModel implements _RawTasksModel {
  const _$_RawTasksModel(
      {final List<RawTaskModel> tasks = const [], this.status = 'loading'})
      : _tasks = tasks;

  factory _$_RawTasksModel.fromJson(Map<String, dynamic> json) =>
      _$$_RawTasksModelFromJson(json);

  final List<RawTaskModel> _tasks;
  @override
  @JsonKey()
  List<RawTaskModel> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'RawTasksModel(tasks: $tasks, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RawTasksModel &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_RawTasksModelCopyWith<_$_RawTasksModel> get copyWith =>
      __$$_RawTasksModelCopyWithImpl<_$_RawTasksModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RawTasksModelToJson(
      this,
    );
  }
}

abstract class _RawTasksModel implements RawTasksModel {
  const factory _RawTasksModel(
      {final List<RawTaskModel> tasks, final String status}) = _$_RawTasksModel;

  factory _RawTasksModel.fromJson(Map<String, dynamic> json) =
      _$_RawTasksModel.fromJson;

  @override
  List<RawTaskModel> get tasks;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_RawTasksModelCopyWith<_$_RawTasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  String get url => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  bool get isNotify => throw _privateConstructorUsedError;
  int get courseId => throw _privateConstructorUsedError;

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
      {String url,
      DateTime endTime,
      DateTime startTime,
      String name,
      int id,
      bool isNotify,
      int courseId});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res> implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  final TaskModel _value;
  // ignore: unused_field
  final $Res Function(TaskModel) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? endTime = freezed,
    Object? startTime = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? isNotify = freezed,
    Object? courseId = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isNotify: isNotify == freezed
          ? _value.isNotify
          : isNotify // ignore: cast_nullable_to_non_nullable
              as bool,
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$$_TaskModelCopyWith(
          _$_TaskModel value, $Res Function(_$_TaskModel) then) =
      __$$_TaskModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url,
      DateTime endTime,
      DateTime startTime,
      String name,
      int id,
      bool isNotify,
      int courseId});
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
    Object? url = freezed,
    Object? endTime = freezed,
    Object? startTime = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? isNotify = freezed,
    Object? courseId = freezed,
  }) {
    return _then(_$_TaskModel(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isNotify: isNotify == freezed
          ? _value.isNotify
          : isNotify // ignore: cast_nullable_to_non_nullable
              as bool,
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskModel implements _TaskModel {
  const _$_TaskModel(
      {required this.url,
      required this.endTime,
      required this.startTime,
      required this.name,
      required this.id,
      this.isNotify = true,
      required this.courseId});

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskModelFromJson(json);

  @override
  final String url;
  @override
  final DateTime endTime;
  @override
  final DateTime startTime;
  @override
  final String name;
  @override
  final int id;
  @override
  @JsonKey()
  final bool isNotify;
  @override
  final int courseId;

  @override
  String toString() {
    return 'TaskModel(url: $url, endTime: $endTime, startTime: $startTime, name: $name, id: $id, isNotify: $isNotify, courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskModel &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isNotify, isNotify) &&
            const DeepCollectionEquality().equals(other.courseId, courseId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isNotify),
      const DeepCollectionEquality().hash(courseId));

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
      {required final String url,
      required final DateTime endTime,
      required final DateTime startTime,
      required final String name,
      required final int id,
      final bool isNotify,
      required final int courseId}) = _$_TaskModel;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

  @override
  String get url;
  @override
  DateTime get endTime;
  @override
  DateTime get startTime;
  @override
  String get name;
  @override
  int get id;
  @override
  bool get isNotify;
  @override
  int get courseId;
  @override
  @JsonKey(ignore: true)
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}
