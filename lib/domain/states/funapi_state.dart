import 'dart:ffi';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/model/task_model.dart';

import '../model/fun_model.dart';

final funApiUserStateProvider = StateProvider((ref) => FunUserModel());
final funApiLoggedInStateProvider = StateProvider((ref) => false);
