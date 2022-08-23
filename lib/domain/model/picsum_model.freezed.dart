// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'picsum_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DisplaySizeModel _$DisplaySizeModelFromJson(Map<String, dynamic> json) {
  return _DisplaySizeModel.fromJson(json);
}

/// @nodoc
mixin _$DisplaySizeModel {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisplaySizeModelCopyWith<DisplaySizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplaySizeModelCopyWith<$Res> {
  factory $DisplaySizeModelCopyWith(
          DisplaySizeModel value, $Res Function(DisplaySizeModel) then) =
      _$DisplaySizeModelCopyWithImpl<$Res>;
  $Res call({int width, int height});
}

/// @nodoc
class _$DisplaySizeModelCopyWithImpl<$Res>
    implements $DisplaySizeModelCopyWith<$Res> {
  _$DisplaySizeModelCopyWithImpl(this._value, this._then);

  final DisplaySizeModel _value;
  // ignore: unused_field
  final $Res Function(DisplaySizeModel) _then;

  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_DisplaySizeModelCopyWith<$Res>
    implements $DisplaySizeModelCopyWith<$Res> {
  factory _$$_DisplaySizeModelCopyWith(
          _$_DisplaySizeModel value, $Res Function(_$_DisplaySizeModel) then) =
      __$$_DisplaySizeModelCopyWithImpl<$Res>;
  @override
  $Res call({int width, int height});
}

/// @nodoc
class __$$_DisplaySizeModelCopyWithImpl<$Res>
    extends _$DisplaySizeModelCopyWithImpl<$Res>
    implements _$$_DisplaySizeModelCopyWith<$Res> {
  __$$_DisplaySizeModelCopyWithImpl(
      _$_DisplaySizeModel _value, $Res Function(_$_DisplaySizeModel) _then)
      : super(_value, (v) => _then(v as _$_DisplaySizeModel));

  @override
  _$_DisplaySizeModel get _value => super._value as _$_DisplaySizeModel;

  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$_DisplaySizeModel(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DisplaySizeModel implements _DisplaySizeModel {
  _$_DisplaySizeModel({this.width = 0, this.height = 0});

  factory _$_DisplaySizeModel.fromJson(Map<String, dynamic> json) =>
      _$$_DisplaySizeModelFromJson(json);

  @override
  @JsonKey()
  final int width;
  @override
  @JsonKey()
  final int height;

  @override
  String toString() {
    return 'DisplaySizeModel(width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DisplaySizeModel &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  _$$_DisplaySizeModelCopyWith<_$_DisplaySizeModel> get copyWith =>
      __$$_DisplaySizeModelCopyWithImpl<_$_DisplaySizeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DisplaySizeModelToJson(
      this,
    );
  }
}

abstract class _DisplaySizeModel implements DisplaySizeModel {
  factory _DisplaySizeModel({final int width, final int height}) =
      _$_DisplaySizeModel;

  factory _DisplaySizeModel.fromJson(Map<String, dynamic> json) =
      _$_DisplaySizeModel.fromJson;

  @override
  int get width;
  @override
  int get height;
  @override
  @JsonKey(ignore: true)
  _$$_DisplaySizeModelCopyWith<_$_DisplaySizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
