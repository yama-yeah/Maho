import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/apis/funapi/funapi_manager.dart';
import 'package:maho/domain/states/funapi_state.dart';
import 'package:maho/ui/component/picsum_bg.dart';
import 'package:maho/ui/task/task_view.dart';

class HomeView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screens = <Widget>[TaskView(), Row()];
    final index = useState(0);
    final screen = Scaffold(
      body: screens[index.value],
      bottomNavigationBar: GlassBottomBar(
        items: [
          GlassBottomBarItem(
            icon: const GlassIcon(Icons.home_work),
            title: const GlassText('Tasks'),
          ),
          GlassBottomBarItem(
            icon: const GlassIcon(Icons.settings),
            title: const GlassText('Settings'),
          ),
        ],
        onTap: (i) {
          index.value = i;
        },
        currentIndex: index.value,
      ),
      backgroundColor: Colors.transparent,
    );
    return Stack(
      children: [
        //const PicsumBackground(),
        Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset('assets/images/task_bg.jpg').image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        screen,
      ],
    );
  }
}
