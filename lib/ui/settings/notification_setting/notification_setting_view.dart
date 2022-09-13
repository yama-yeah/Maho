import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/states/notification_state.dart';
import 'package:maho/utils/notification_util.dart';

class NotificationSettingView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final util = ref.watch(notificationUtilsProvider);
    final hoursInputController = useTextEditingController();
    final daysInputController = useTextEditingController();
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          foregroundColor: Colors.grey,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: const Text('通知設定'),
        ),
        body: Column(
          children: [
            TextField(
              controller: hoursInputController,
              onSubmitted: (value) async {
                await util
                    .setState(util.state.copyWith(hours: int.parse(value)));
                hoursInputController.clear();
              },
              decoration: InputDecoration(
                labelText: '${util.state.hours}時間前に通知',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            TextField(
              controller: daysInputController,
              onSubmitted: (value) async {
                await util
                    .setState(util.state.copyWith(days: int.parse(value)));
                daysInputController.clear();
              },
              decoration: InputDecoration(
                labelText: '${util.state.days}日前に通知',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ],
        ));
  }
}
