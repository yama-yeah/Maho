import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/apis/funapi/funapi_manager.dart';
import 'package:maho/domain/model/task_model.dart';
import 'package:maho/domain/states/funapi_state.dart';
import 'package:maho/ui/home/home_view.dart';
import 'package:maho/ui/login/login_view.dart';
import 'package:go_router/go_router.dart';
import 'package:maho/ui/task/detail_task/detail_of_task_view.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:tuple/tuple.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  AwesomeNotifications().initialize(
      // set the icon to null if you want to use the default app icon
      'resource://drawable/res_app_icon',
      [
        NotificationChannel(
            channelGroupKey: 'basic_channel_group',
            channelKey: 'tasks_channel',
            channelName: 'Tasks notifications',
            channelDescription: 'Notification channel for tasks',
            defaultColor: const Color(0xFF9D50DD),
            ledColor: Colors.white)
      ],
      // Channel groups are only visual and are not required
      channelGroups: [
        NotificationChannelGroup(
            channelGroupkey: 'basic_channel_group',
            channelGroupName: 'Basic group')
      ],
      debug: true);
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    //initialize process is here!!!
    final funApiManager = ref.watch(funApiManagerProvider);
    //このProviderはApiのユーザ情報を管理しているのでここで初期化します
    final initialRoute = useState('/login');

    if (funApiManager.isLoaded) {
      if (ref.watch(funApiLoggedInStateProvider)) {
        initialRoute.value = '/home';
      }
      FlutterNativeSplash.remove();
    }

    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        Alert(
          context: context,
          type: AlertType.info,
          title: "通知",
          desc: "通知を許可してください",
          buttons: [
            DialogButton(
              onPressed: () =>
                  AwesomeNotifications().requestPermissionToSendNotifications(),
              width: 120,
              child: const Text(
                "OK",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ).show();
      }
    });
    //initialized!!!

    final GoRouter router = GoRouter(
      initialLocation: initialRoute.value,
      routes: <GoRoute>[
        GoRoute(
          path: '/login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginView();
          },
        ),
        GoRoute(
          path: '/home',
          builder: (BuildContext context, GoRouterState state) {
            return HomeView();
          },
        ),
        GoRoute(
            path: '/detailOfTask',
            builder: (context, state) =>
                DetailOfTaskView(state.extra as Tuple2<TaskModel, CourseModel>))
      ],
      redirect: (state) {
        final loggedInState = ref.read(funApiLoggedInStateProvider);

        if (loggedInState) {
          return null;
        } else {
          if (state.subloc != '/login') {
            return '/login';
          } else {
            return null;
          }
        }
      },
    );
    return GlassApp(
        home: MaterialApp.router(
      title: 'Maho',
      theme: ThemeData.light(),
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      builder: EasyLoading.init(),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: const TextTheme()
            .apply(displayColor: Colors.grey, bodyColor: Colors.grey),
      ),
    ));
  }
}
