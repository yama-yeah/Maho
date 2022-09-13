import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/model/notify_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

final notificationStateNotifierProvider =
    StateNotifierProvider.family((ref, SharedPreferences prefs) {
  return NotificationStateNotifier(prefs);
});

class NotificationStateNotifier extends StateNotifier<NotificationDateModel>
    implements NotificationStateNotifierInterface {
  final SharedPreferences prefs;
  NotificationStateNotifier(this.prefs)
      : super(prefs.getString('notify') != null
            ? NotificationDateModel.fromJson(
                jsonDecode(prefs.getString('notify')!))
            : const NotificationDateModel());
  @override
  Future<void> setState(NotificationDateModel data) async {
    await prefs.setString('notify', const JsonEncoder().convert(data.toJson()));
    state = data;
  }
}

abstract class NotificationStateNotifierInterface {
  Future<void> setState(NotificationDateModel data);
}
