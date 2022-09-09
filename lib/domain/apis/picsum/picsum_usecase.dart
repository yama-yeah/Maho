import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/model/picsum_model.dart';
import 'package:maho/domain/states/picsum_state.dart';
import 'package:path/path.dart';

import 'picsum.dart';

final getImageFutureProvider = FutureProvider.family(
  (ref, Size size) async {
    final PicsumInterface picsum = Picsum();
    final bytes =
        await picsum.getImageBytes(size.width.toInt(), size.height.toInt());
    return bytes;
  },
);
final bgImageProvider = Provider.family((ref, Size size) {
  final image =
      ref.watch(getImageFutureProvider.call(size)).when(data: (bytes) {
    return Image.memory(bytes).image;
  }, error: (err, stk) {
    return Image.asset('images/login_bg.jpg').image;
  }, loading: () {
    return Image.asset('images/login_bg.jpg').image;
  });
  return BoxDecoration(
      image: DecorationImage(
    fit: BoxFit.cover,
    image: image,
  ));
});
