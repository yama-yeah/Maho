import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/ui/component/task_list_tile.dart';
import 'package:maho/ui/task/task_view_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../const/text_style.dart';

class TaskView extends HookConsumerWidget {
  final _refreshController = RefreshController(initialRefresh: false);
  void init(Function init) async {
    await init();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(taskViewModelProvider);
    useEffect(() {
      init(viewModel.updateTasks);
      return null;
    }, []);
    //Logger().i('tasks view watch that ${viewModel.state}');
    Set<Widget> tiles = {};
    for (var item in viewModel.state) {
      tiles.add(TaskListTile(item.item1, item.item2));
    }
    tiles.add(Container(
      padding: const EdgeInsets.only(bottom: kBottomNavigationBarHeight + 10),
    ));
    final appBarTextStyle = ref.read(appBarTextStyleProvider);
    return Scaffold(
      appBar: GlassAppBar(
        title: Text(
          'Tasks',
          style: appBarTextStyle,
        ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: SmartRefresher(
          enablePullDown: true,
          header: const WaterDropHeader(),
          controller: _refreshController,
          child: ListView(
            children: tiles.toList(),
          ),
          onRefresh: () async {
            await viewModel.updateTasks();
            _refreshController.refreshCompleted();
          },
        ),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
