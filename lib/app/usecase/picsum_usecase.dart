import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/model/picsum_model.dart';
import 'package:maho/domain/states/picsum_state.dart';
import 'package:path/path.dart';

import '../../domain/apis/picsum/picsum.dart';

abstract class PicsumManagerInterface {
  PicsumManagerInterface(Ref ref);
  AsyncValue<Decoration> getImage();
}

class PicsumManager implements PicsumManagerInterface {
  final WidgetRef ref;
  final BuildContext context;
  PicsumManager(this.context, this.ref);
  @override
  AsyncValue<Decoration> getImage() {
    final width = MediaQuery.of(context).size.width.toInt();
    final height = MediaQuery.of(context).size.height.toInt();
    return ref.watch(getImageFutureProvider);
  }
}

final getImageFutureProvider = FutureProvider<Decoration>((ref) async {
  final PicsumInterface picsum = Picsum();
  final state = ref.watch(picsumStateProvider);
  final bytes = await picsum.getImageBytes(state.width, state.height);

  final decoration = BoxDecoration(
    image: DecorationImage(
      image: Image.memory(bytes).image,
      fit: BoxFit.cover,
    ),
  );
  print('fetched');
  return decoration;
});
/*
final getImageMethodProvider = Provider((ref) {
  final futureProvider = ref.watch(getImageFutureProvider);
  return (context) {
    final a = futureProvider.when(
        data: (data) {}, error: (err, stk) {}, loading: () {});
  };
});
*/
