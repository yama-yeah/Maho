import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/app/usecase/funapi_usecase.dart';
import 'package:maho/ui/component/picsum_bg.dart';

class HomeView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screens = <Widget>[];
    ref.watch(a);
    return Stack(
      children: const [
        PicsumBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Text('Homeの仮'),
        ),
      ],
    );
  }
}

final a = Provider((ref) {
  final tasks = ref.watch(getTasksFutureProvider);
});
