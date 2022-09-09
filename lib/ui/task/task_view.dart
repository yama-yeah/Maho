import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:maho/domain/apis/funapi/funapi_manager.dart';
import 'package:maho/domain/db/course/course_dao.dart';
import 'package:maho/domain/db/db.dart';
import 'package:maho/domain/db/task/task_dao.dart';
import 'package:maho/domain/db/task/task_table.dart';
import 'package:maho/domain/model/task_model.dart';
import 'package:maho/ui/component/task_list_tile.dart';
import 'package:maho/ui/task/task_view_model.dart';
import 'package:go_router/go_router.dart';

import '../../const/text_style.dart';

class TaskView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(taskViewModelProvider);
    useEffect(() {
      Logger().i('init task view');
      viewModel.updateTasks();
    }, []);

    //Logger().i('tasks view watch that ${viewModel.state}');
    Set<Widget> tiles = {};
    for (var item in viewModel.state) {
      tiles.add(TaskListTile(item.item1, item.item2));
    }
    //Logger().wtf(viewModel.state.length);
    final appBarTextStyle = ref.read(appBarTextStyleProvider);
    return Scaffold(
      appBar: GlassAppBar(
        title: Text(
          'Tasks',
          style: appBarTextStyle,
        ),
      ),
      body: ListView(children: tiles.toList()),
      backgroundColor: Colors.transparent,
    );
  }
}
