import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:maho/domain/data/shared_pref.dart';
import 'package:maho/domain/states/notification_state.dart';
import 'package:tuple/tuple.dart';

import '../domain/model/task_model.dart';

abstract class NotificationUtilsInterface
    implements NotificationStateNotifierInterface {
  void createTaskNotifications(List<Tuple2<TaskModel, CourseModel>> data);
  int get state;
}

class FakeNotificationUtils implements NotificationUtilsInterface {
  @override
  void createTaskNotifications(List<Tuple2<TaskModel, CourseModel>> data) {}

  @override
  get state => -1;

  @override
  Future<void> setState(int data) {
    // TODO: implement setState
    throw UnimplementedError();
  }
}

class NotificationUtils implements NotificationUtilsInterface {
  NotificationStateNotifierInterface stateNotifier;
  final awesomeNotifications = AwesomeNotifications();
  final int _state;
  NotificationUtils(this.stateNotifier, this._state);
  void createTaskNotification(Tuple2<TaskModel, CourseModel> element) {
    awesomeNotifications.createNotification(
        content: NotificationContent(
            id: element.item1.id,
            channelKey: 'basic_channel',
            title: element.item1.name,
            body: 'Simple body'));
  }

  @override
  void createTaskNotifications(List<Tuple2<TaskModel, CourseModel>> data) {
    for (var element in data) {
      createTaskNotification(element);
    }
  }

  @override
  Future<void> setState(int data) async {
    await stateNotifier.setState(data);
  }

  @override
  get state => _state;
}

final notificationUtilsFutureProvider = FutureProvider((ref) async {
  final prefs = await ref.watch(getPrefInstanceProvider.future);
  final stateNotifier =
      ref.watch(notificationStateNotifierProvider(prefs).notifier);
  final state = ref.watch(notificationStateNotifierProvider(prefs));
  Logger().wtf('omg');
  return NotificationUtils(stateNotifier, state as int);
});

final notificationUtilsProvider = Provider((ref) {
  return ref.watch(notificationUtilsFutureProvider).value ??
      FakeNotificationUtils();
});
