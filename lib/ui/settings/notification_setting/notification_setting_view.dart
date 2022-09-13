import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/states/notification_state.dart';
import 'package:maho/utils/notification_util.dart';

class NotificationSettingView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final util = ref.watch(notificationUtilsProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('通知設定'),
        ),
        body: Column(
          children: [
            TextField(
              onSubmitted: (value) {
                util.setState(util.state.copyWith(hours: int.parse(value)));
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
              onSubmitted: (value) async {
                await util
                    .setState(util.state.copyWith(days: int.parse(value)));
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
