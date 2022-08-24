import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/apis/funapi/funapi_manager.dart';
import 'package:maho/domain/model/task_model.dart';

import '../../const/text_style.dart';

class TaskView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appBarTextStyle = ref.read(appBarTextStyleProvider);
    return Scaffold(
      appBar: GlassAppBar(
        title: Text(
          'Tasks',
          style: appBarTextStyle,
        ),
      ),
      body: ListView(children: []),
    );
  }
}

final tasksCash = Provider((ref) {
  final tasks = ref.watch(getTasksFutureProvider);
  tasks.when(data: (data) {}, error: (err, stk) {}, loading: () {});
});
