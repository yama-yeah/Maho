// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fun_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FunUserModel _$FunUserModelFromJson(Map<String, dynamic> json) {
  return _FunUserModel.fromJson(json);
}

/// @nodoc
mixin _$FunUserModel {
  String get userid => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FunUserModelCopyWith<FunUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunUserModelCopyWith<$Res> {
  factory $FunUserModelCopyWith(
          FunUserModel value, $Res Function(FunUserModel) then) =
      _$FunUserModelCopyWithImpl<$Res>;
  $Res call({String userid, String password});
}

/// @nodoc
class _$FunUserModelCopyWithImpl<$Res> implements $FunUserModelCopyWith<$Res> {
  _$FunUserModelCopyWithImpl(this._value, this._then);

  final FunUserModel _value;
  // ignore: unused_field
  final $Res Function(FunUserModel) _then;

  @override
  $Res call({
    Object? userid = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      userid: userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FunUserModelCopyWith<$Res>
    implements $FunUserModelCopyWith<$Res> {
  factory _$$_FunUserModelCopyWith(
          _$_FunUserModel value, $Res Function(_$_FunUserModel) then) =
      __$$_FunUserModelCopyWithImpl<$Res>;
  @override
  $Res call({String userid, String password});
}

/// @nodoc
class __$$_FunUserModelCopyWithImpl<$Res>
    extends _$FunUserModelCopyWithImpl<$Res>
    implements _$$_FunUserModelCopyWith<$Res> {
  __$$_FunUserModelCopyWithImpl(
      _$_FunUserModel _value, $Res Function(_$_FunUserModel) _then)
      : super(_value, (v) => _then(v as _$_FunUserModel));

  @override
  _$_FunUserModel get _value => super._value as _$_FunUserModel;

  @override
  $Res call({
    Object? userid = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_FunUserModel(
      userid: userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FunUserModel implements _FunUserModel {
  _$_FunUserModel({this.userid = '', this.password = ''});

  factory _$_FunUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_FunUserModelFromJson(json);

  @override
  @JsonKey()
  final String userid;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'FunUserModel(userid: $userid, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FunUserModel &&
            const DeepCollectionEquality().equals(other.userid, userid) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userid),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_FunUserModelCopyWith<_$_FunUserModel> get copyWith =>
      __$$_FunUserModelCopyWithImpl<_$_FunUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FunUserModelToJson(
      this,
    );
  }
}

abstract class _FunUserModel implements FunUserModel {
  factory _FunUserModel({final String userid, final String password}) =
      _$_FunUserModel;

  factory _FunUserModel.fromJson(Map<String, dynamic> json) =
      _$_FunUserModel.fromJson;

  @override
  String get userid;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_FunUserModelCopyWith<_$_FunUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
