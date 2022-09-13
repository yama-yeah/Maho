import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:maho/domain/data/shared_pref.dart';
import 'package:maho/domain/model/notify_model.dart';
import 'package:maho/domain/states/notification_state.dart';
import 'package:maho/utils/date_util.dart';
import 'package:tuple/tuple.dart';

import '../domain/model/task_model.dart';

abstract class NotificationUtilsInterface
    implements NotificationStateNotifierInterface {
  void createTaskNotifications(List<Tuple2<TaskModel, CourseModel>> data);
  NotificationDateModel get state;
}

class FakeNotificationUtils implements NotificationUtilsInterface {
  @override
  void createTaskNotifications(List<Tuple2<TaskModel, CourseModel>> data) {}

  @override
  get state => const NotificationDateModel();

  @override
  Future<void> setState(NotificationDateModel data) {
    // TODO: implement setState
    throw UnimplementedError();
  }
}

class NotificationUtils implements NotificationUtilsInterface {
  final NotificationStateNotifierInterface stateNotifier;
  final awesomeNotifications = AwesomeNotifications();
  final NotificationDateModel _state;
  NotificationUtils(this.stateNotifier, this._state);

  NotificationSchedule makeSchedule(
      NotificationDateModel model, DateTime date) {
    //
    return NotificationCalendar.fromDate(
        date: date.subtract(model.toDuration()));
  }

  void createTaskNotification(Tuple2<TaskModel, CourseModel> element) {
    final endTime = unixTime2Date(element.item1.endTime);
    final now = DateTime.now();
    if (endTime.subtract(state.toDuration()).compareTo(now) == -1) {
      final diff = endTime.difference(now);
      if (diff.inDays > 0) {
        awesomeNotifications.createNotification(
          content: NotificationContent(
              id: element.item1.id,
              channelKey: 'tasks_channel',
              title: element.item1.name,
              body: '締め切り${diff.inDays}日前です'),
        );
      } else {
        awesomeNotifications.createNotification(
          content: NotificationContent(
              id: element.item1.id,
              channelKey: 'tasks_channel',
              title: element.item1.name,
              body: '締め切り${diff.inHours}時間前です'),
        );
      }
    } else {
      awesomeNotifications.createNotification(
        content: NotificationContent(
            id: element.item1.id,
            channelKey: 'tasks_channel',
            title: element.item1.name,
            body: state.days > 0
                ? '締め切り${state.days}日前です'
                : '締め切り${state.hours}時間前です'),
        schedule: makeSchedule(state, endTime),
      );
    }
  }

  @override
  void createTaskNotifications(List<Tuple2<TaskModel, CourseModel>> data) {
    for (var element in data) {
      if (element.item1.isNotify && element.item2.isTaskNotify) {
        createTaskNotification(element);
      }
    }
  }

  @override
  Future<void> setState(NotificationDateModel data) async {
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
  return NotificationUtils(stateNotifier, state as NotificationDateModel);
});

final notificationUtilsProvider = Provider((ref) {
  return ref.watch(notificationUtilsFutureProvider).value ??
      FakeNotificationUtils();
});
