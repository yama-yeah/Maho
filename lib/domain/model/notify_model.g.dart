// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationDateModel _$$_NotificationDateModelFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationDateModel(
      hours: json['hours'] as int? ?? 3,
      days: json['days'] as int? ?? 0,
      notifiedIds: (json['notifiedIds'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_NotificationDateModelToJson(
        _$_NotificationDateModel instance) =>
    <String, dynamic>{
      'hours': instance.hours,
      'days': instance.days,
      'notifiedIds': instance.notifiedIds,
    };
