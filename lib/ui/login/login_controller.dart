import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/apis/funapi/funapi_manager.dart';
import 'package:maho/domain/states/funapi_state.dart';
import 'package:path/path.dart';

import '../../domain/apis/funapi/funapi_domain.dart';
import '../../domain/data/secure_storage.dart';
import '../../domain/model/fun_model.dart';
import 'package:go_router/go_router.dart';

class LoginController implements LoginControllerInterface {
  final WidgetRef ref;
  final BuildContext context;
  LoginController(this.context, this.ref);
  @override
  void login(FunUserModel user, ValueNotifier<bool> controller) async {
    final funApiManager = ref.read(funApiManagerProvider);
    controller.value = true;
    EasyLoading.show(status: 'Logging...');
    await funApiManager.updateUser(user).then((value) {
      //ココらへんはアプリの実動作で確認する
      if (value) {
        EasyLoading.showSuccess('Success');
        context.go('/home');
      } else {
        if (ref.read(funApiHealthStateProvider) == 'healthy') {
          EasyLoading.showInfo('Wrong user ID or password.');
        } else {
          EasyLoading.showError('Server Error please retry.');
        }
      }
    });
    controller.value = false;
  }
}

abstract class LoginControllerInterface {
  void login(FunUserModel user, ValueNotifier<bool> controller);
}
