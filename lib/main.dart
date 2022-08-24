import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/ui/home/home_view.dart';
import 'package:maho/ui/login/login_view.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final GoRouter _router = GoRouter(
      initialLocation: '/login',
      routes: <GoRoute>[
        GoRoute(
          path: '/login',
          builder: (BuildContext context, GoRouterState state) {
            return LoginView();
          },
        ),
        GoRoute(
          path: '/home',
          builder: (BuildContext context, GoRouterState state) {
            return HomeView();
          },
        ),
      ],
      redirect: (state) {
        return null;
      });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GlassApp(
      home: MaterialApp.router(
        title: 'Maho',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        builder: EasyLoading.init(),
      ),
    );
  }
}
