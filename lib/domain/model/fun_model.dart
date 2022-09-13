import 'package:freezed_annotation/freezed_annotation.dart';

part 'fun_model.freezed.dart';
part 'fun_model.g.dart';

//userのid、passwordを保持するためのモデルです。
@freezed
abstract class FunUserModel with _$FunUserModel {
  //このクラスは、DBの状態を保持するクラスです。
  factory FunUserModel({
    @Default('') String userid,
    @Default('') String password,
  }) = _FunUserModel;
  factory FunUserModel.fromJson(Map<String, dynamic> json) =>
      _$FunUserModelFromJson(json);
}
