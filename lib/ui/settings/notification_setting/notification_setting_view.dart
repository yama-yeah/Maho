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
      body: TextField(
        onSubmitted: (value) {
          util.setState(int.parse(value));
        },
        decoration: InputDecoration(
          labelText: '${util.state}時間前に通知',
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
