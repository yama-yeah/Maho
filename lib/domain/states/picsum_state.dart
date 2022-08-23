import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/model/picsum_model.dart';

final picsumStateProvider =
    StateProvider<DisplaySizeModel>((ref) => DisplaySizeModel());
