import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/const/text_style.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: GlassAppBar(
        title: Text(
          'Settings',
          style: ref.read(appBarTextStyleProvider),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GlassButton(
            onPressed: () {
              context.push('/notificationSetting');
            },
            child: Row(
              children: const [
                GlassIcon(Icons.notifications),
                GlassText('通知設定')
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
