import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/apis/funapi/funapi_domain.dart';
import 'package:maho/domain/data/secure_storage.dart';
import 'package:maho/domain/model/fun_model.dart';
import 'package:maho/domain/model/task_model.dart';
import 'package:maho/domain/states/funapi_state.dart';

abstract class FunApiManagerInterface {
  FunApiManagerInterface();
  Future<bool> updateUser(FunUserModel user);
}

class FunApiManager implements FunApiManagerInterface {
  Ref ref;
  FunApiInterface api;
  KeyStoreInterface keyStore;
  FunApiManager(this.ref, this.api, this.keyStore);
  @override
  Future<bool> updateUser(FunUserModel user) async {
    //ログインに成功したらFunApiのユーザを更新する
    final funApiUserStateNotifier = ref.read(funApiUserStateProvider.notifier);
    final funApiLoggedInStateNotifier =
        ref.read(funApiLoggedInStateProvider.notifier);
    bool flag = await api.login(user);
    if (flag) {
      //FunApiのログイン状態を更新
      funApiLoggedInStateNotifier.state = true;
      //userを更新
      funApiUserStateNotifier.state = user;
      //書き込む
      await keyStore.setJson('key', user.toJson());
    }
    return flag;
  }
}

final funApiManagerProvider = Provider<FunApiManagerInterface>((ref) {
  return FunApiManager(ref, FunApi(), ref.read(keyStoreProvider));
});

final getTasksFutureProvider = FutureProvider<TasksModel>((ref) async {
  print('fetching tasks');
  final user = ref.watch(funApiUserStateProvider);
  final FunApiInterface api = FunApi();
  final tasks = await api.getTasks(user);
  print('fetched tasks');
  return tasks;
});
