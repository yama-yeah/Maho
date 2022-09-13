import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:maho/domain/db/task/task_dao.dart';
import 'package:maho/utils/date_util.dart';
import 'package:tuple/tuple.dart';

import '../../domain/model/task_model.dart';

class TaskListTile extends HookConsumerWidget {
  final TaskModel task;
  final CourseModel course;
  const TaskListTile(this.task, this.course, {super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Slidable(
        endActionPane: ActionPane(
          //スライドしたときに表示されるボタン
          motion: const DrawerMotion(),
          //スライドしたときのアニメーション
          children: [
            SlidableAction(
              flex: 1,
              onPressed: (_) async {
                await ref
                    .read(tasksDaoProvider)
                    .upsertTask(task.copyWith(isNotify: !task.isNotify));
              },
              icon: task.isNotify
                  ? Icons.notifications_off
                  : Icons.notifications_active,
            ),
          ],
        ),
        child: GlassListTile(
          borderRadius: const BorderRadius.horizontal(
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
