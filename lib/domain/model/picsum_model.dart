import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'picsum_model.freezed.dart';
part 'picsum_model.g.dart';

//userのid、passwordを保持するためのモデルです。
@freezed
abstract class DisplaySizeModel with _$DisplaySizeModel {
  //このクラスは、DBの状態を保持するクラスです。
  factory DisplaySizeModel({
    @Default(0) int width,
    @Default(0) int height,
  }) = _DisplaySizeModel;
  factory DisplaySizeModel.fromJson(Map<String, dynamic> json) =>
      _$DisplaySizeModelFromJson(json);
}
