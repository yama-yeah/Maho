import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/data/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

final notificationStateNotifierProvider =
    StateNotifierProvider.family((ref, SharedPreferences prefs) {
  return NotificationStateNotifier(prefs);
});

class NotificationStateNotifier extends StateNotifier<int>
    implements NotificationStateNotifierInterface {
  final SharedPreferences prefs;
  NotificationStateNotifier(this.prefs) : super(prefs.getInt('notify') ?? 3);
  @override
  Future<void> setState(int data) async {
    await prefs.setInt('notify', data);
    state = data;
  }
}

abstract class NotificationStateNotifierInterface {
  Future<void> setState(int data);
}
