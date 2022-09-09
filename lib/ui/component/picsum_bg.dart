import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/apis/picsum/picsum_usecase.dart';
import 'package:maho/domain/apis/picsum/picsum.dart';
import 'package:maho/domain/model/picsum_model.dart';
import 'package:maho/domain/states/picsum_state.dart';
import 'package:path/path.dart';

class PicsumBackground extends HookConsumerWidget {
  const PicsumBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final picsum = ref.watch(bgImageProvider.call(MediaQuery.of(context).size));

    return Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          decoration: picsum,
        ));
  }
}
