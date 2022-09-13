import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/fun_model.dart';

final funApiUserStateProvider = StateProvider((ref) => FunUserModel());
final funApiLoggedInStateProvider = StateProvider((ref) => false);
final funApiHealthStateProvider = StateProvider((_) => 'unknown');
