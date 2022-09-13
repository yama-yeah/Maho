import 'package:freezed_annotation/freezed_annotation.dart';

part 'notify_model.freezed.dart';
part 'notify_model.g.dart';

@freezed
class NotificationDateModel with _$NotificationDateModel {
  const factory NotificationDateModel({
    @Default(3) int hours,
    @Default(0) int days,
    @Default([]) List<int> notifiedIds,
  }) = _NotificationDateModel;
  const NotificationDateModel._();
  factory NotificationDateModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationDateModelFromJson(json);
  Duration toDuration() => Duration(days: days, hours: hours);
}
