import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
//import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/db/task/task_dao.dart';
import 'package:maho/domain/model/task_model.dart';
import 'package:maho/utils/date_util.dart';
import 'package:tuple/tuple.dart' as t;
import 'package:url_launcher/url_launcher.dart';

class DetailOfTaskView extends HookConsumerWidget {
  final t.Tuple2<TaskModel, CourseModel> data;
  const DetailOfTaskView(this.data, {super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final task = data.item1;
    final course = data.item2;
    final isNotifyByTaskModel = useState(task.isNotify); //この画面で可変する値を全部Hookで扱う
    //final isNotifyByCourseModel = useState(course.isTaskNotify);
    final tasksDao = ref.read(tasksDaoProvider);

    final rowChildren = [
      ...isNotifyByTaskModel.value
          ? [
              const Icon(Icons.notifications_active),
              const Text('通知する'),
            ]
          : [const Icon(Icons.notifications_none), const Text('通知しない')],
      Switch(
          value: isNotifyByTaskModel.value,
          onChanged: (flag) async {
            await tasksDao.upsertTask(task.copyWith(isNotify: flag));
            isNotifyByTaskModel.value = flag;
          })
    ];
    final r = Row(
      children: rowChildren,
      mainAxisAlignment: MainAxisAlignment.center,
    );
    final c = Column(children: [
      const SizedBox(
        height: 20,
      ),
      Text('終了日時　${unixTime2LongFormat(task.startTime)}'),
      const Divider(
        height: 20,
        thickness: 1.5,
        indent: 20,
        endIndent: 20,
        color: Colors.grey,
      ),
      Text('開始日時　${unixTime2LongFormat(task.endTime)}'),
      const Divider(
        height: 20,
        thickness: 1.5,
        indent: 20,
        endIndent: 20,
        color: Colors.grey,
      ),
      r,
      TextButton(
          onPressed: () async {
            if (!await launchUrl(Uri.parse(task.url),
                mode: LaunchMode.externalApplication)) {
              throw 'Could not launch ${task.url}';
            }
          },
          child: Text(task.url)),
      const Divider(
        height: 20,
        thickness: 1.5,
        indent: 20,
        endIndent: 20,
        color: Colors.grey,
      ),
    ]);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            task.name,
          ),
          shadowColor: Colors.transparent,
          foregroundColor: Colors.grey,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          //shape: Border(bottom: BorderSide(color: Colors.grey, width: 2)),
        ),
        body: Center(
          child: c,
        ));
  }
}
