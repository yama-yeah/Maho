import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:maho/utils/date_util.dart';
import 'package:tuple/tuple.dart';

import '../../domain/model/task_model.dart';

class TaskListTile extends HookConsumerWidget {
  final TaskModel task;
  final CourseModel course;
  TaskListTile(this.task, this.course);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Slidable(
        endActionPane: ActionPane(
          //スライドしたときに表示されるボタン
          motion: const DrawerMotion(),
          //スライドしたときのアニメーション
          children: [
            SlidableAction(
              flex: 1,
              //長さ
              onPressed: (_) {
                //押された時の処理
              },
              icon: Icons.delete,
              //アイコン
            ),
            SlidableAction(
              flex: 1,
              onPressed: (_) async {},
              icon: task.isNotify
                  ? Icons.notifications_off
                  : Icons.notifications_active,
            ),
          ],
        ),
        child: GlassListTile(
          borderRadius: BorderRadius.horizontal(
              right: Radius.circular(0), left: Radius.circular(15)),
          title: GlassText(task.name),
          subtitle: GlassText(
              '${course.isShortName ? course.shortName : course.fullName}　${unixTime2DiffTime(task.endTime)}'),
          onTap: () {
            context.push(
              '/detailOfTask',
              extra: Tuple2(task.copyWith(), course.copyWith()),
            );
          },
        ),
      ),
    );
  }
}
