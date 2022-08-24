import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/apis/funapi/funapi_manager.dart';
import 'package:maho/domain/states/funapi_state.dart';
import 'package:maho/ui/component/picsum_bg.dart';

class HomeView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(ref.read(funApiLoggedInStateProvider));
    final screens = <Widget>[];
    return Stack(
      children: const [
        //PicsumBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Text('Homeの仮'),
        ),
      ],
    );
  }
}

final tasksCha = Provider((ref) {
  final tasks = ref.watch(getTasksFutureProvider);
});
