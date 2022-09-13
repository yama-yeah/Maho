import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:maho/domain/apis/funapi/funapi_manager.dart';
import 'package:maho/domain/states/funapi_state.dart';
import 'package:maho/ui/component/picsum_bg.dart';
import 'package:maho/ui/task/task_view.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
    useEffect(() {
      AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
        if (!isAllowed) {
          Logger().i('plz allow notify');
          Alert(
            context: context,
            type: AlertType.info,
            title: "通知",
            desc: "通知を許可してください",
            buttons: [
              DialogButton(
                onPressed: () {
                  AwesomeNotifications().requestPermissionToSendNotifications();
                  Navigator.pop(context);
                },
                width: 120,
                child: const Text(
                  "OK",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          ).show();
        } else {
          Logger().i('allowed');
        }
      });
    }, []);
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
