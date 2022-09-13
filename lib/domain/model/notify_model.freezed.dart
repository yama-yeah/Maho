// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notify_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationDateModel _$NotificationDateModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationDateModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationDateModel {
  int get hours => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDateModelCopyWith<NotificationDateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDateModelCopyWith<$Res> {
  factory $NotificationDateModelCopyWith(NotificationDateModel value,
          $Res Function(NotificationDateModel) then) =
      _$NotificationDateModelCopyWithImpl<$Res>;
  $Res call({int hours, int days});
}

/// @nodoc
class _$NotificationDateModelCopyWithImpl<$Res>
    implements $NotificationDateModelCopyWith<$Res> {
  _$NotificationDateModelCopyWithImpl(this._value, this._then);

  final NotificationDateModel _value;
  // ignore: unused_field
  final $Res Function(NotificationDateModel) _then;

  @override
  $Res call({
    Object? hours = freezed,
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationDateModelCopyWith<$Res>
    implements $NotificationDateModelCopyWith<$Res> {
  factory _$$_NotificationDateModelCopyWith(_$_NotificationDateModel value,
          $Res Function(_$_NotificationDateModel) then) =
      __$$_NotificationDateModelCopyWithImpl<$Res>;
  @override
  $Res call({int hours, int days});
}

/// @nodoc
class __$$_NotificationDateModelCopyWithImpl<$Res>
    extends _$NotificationDateModelCopyWithImpl<$Res>
    implements _$$_NotificationDateModelCopyWith<$Res> {
  __$$_NotificationDateModelCopyWithImpl(_$_NotificationDateModel _value,
      $Res Function(_$_NotificationDateModel) _then)
      : super(_value, (v) => _then(v as _$_NotificationDateModel));

  @override
  _$_NotificationDateModel get _value =>
      super._value as _$_NotificationDateModel;

  @override
  $Res call({
    Object? hours = freezed,
    Object? days = freezed,
  }) {
    return _then(_$_NotificationDateModel(
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationDateModel extends _NotificationDateModel {
  const _$_NotificationDateModel({this.hours = 3, this.days = 0}) : super._();

  factory _$_NotificationDateModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationDateModelFromJson(json);

  @override
  @JsonKey()
  final int hours;
  @override
  @JsonKey()
  final int days;

  @override
  String toString() {
    return 'NotificationDateModel(hours: $hours, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationDateModel &&
            const DeepCollectionEquality().equals(other.hours, hours) &&
            const DeepCollectionEquality().equals(other.days, days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hours),
      const DeepCollectionEquality().hash(days));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationDateModelCopyWith<_$_NotificationDateModel> get copyWith =>
      __$$_NotificationDateModelCopyWithImpl<_$_NotificationDateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationDateModelToJson(
      this,
    );
  }
}

abstract class _NotificationDateModel extends NotificationDateModel {
  const factory _NotificationDateModel({final int hours, final int days}) =
      _$_NotificationDateModel;
  const _NotificationDateModel._() : super._();

  factory _NotificationDateModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationDateModel.fromJson;

  @override
  int get hours;
  @override
  int get days;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationDateModelCopyWith<_$_NotificationDateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
