import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/app/usecase/funapi_usecase.dart';
import 'package:path/path.dart';

import '../../domain/apis/funapi/funapi.dart';
import '../../domain/data/secure_storage.dart';
import '../../domain/model/fun_model.dart';
import 'package:go_router/go_router.dart';

class LoginController implements LoginControllerInterface {
  final WidgetRef ref;
  final BuildContext context;
  LoginController(this.context, this.ref);
  @override
  void login(FunUserModel user) {
    final funApiManager = ref.read(funApiManagerProvider);
    //EasyLoading.show(status: 'Logging...');
    funApiManager.updateUser(user).then((value) {
      if (value) {
        EasyLoading.showSuccess('Success');
        context.go('/home');
      } else {
        EasyLoading.showError('Failed logged in...');
      }
    });
  }
}

abstract class LoginControllerInterface {
  void login(FunUserModel user);
}
