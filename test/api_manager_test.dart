import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/apis/funapi/funapi_domain.dart';
import 'package:maho/domain/apis/funapi/funapi_manager.dart';
import 'package:maho/domain/data/secure_storage.dart';
import 'package:maho/domain/model/task_model.dart';
import 'package:maho/domain/model/fun_model.dart';
import 'package:maho/domain/states/funapi_state.dart';

void main() {
  final testKeyStore = TestKeyStore();
  final funApiManagerProvider = Provider<FunApiManagerInterface>((ref) {
    return FunApiManager(ref, TestApi(), testKeyStore);
  });
  test('login success test', () async {
    final apiManager = ProviderContainer().read(funApiManagerProvider);
    final user = FunUserModel(userid: 'a');
    final flag = await apiManager.updateUser(user);
    expect(flag, true);
    expect(await testKeyStore.getJson(''), user.toJson());
    final loggedInState = ProviderContainer().read(funApiLoggedInStateProvider);
    expect(loggedInState, true);
    final userState = ProviderContainer().read(funApiUserStateProvider);
    expect(userState, user);
  });
}

class TestApi extends FunApiInterface {
  @override
  Future<TasksModel> getTasks(FunUserModel user) {
    // TODO: implement getTasks
    throw UnimplementedError();
  }

  @override
  Future<bool> login(FunUserModel user) async {
    if (user.userid == 'a') {
      return true;
    } else {
      return false;
    }
  }
}

class TestKeyStore implements KeyStoreInterface {
  Map<String, dynamic> _json = {};
  @override
  Future<Map<String, dynamic>> getJson(String key) async {
    return _json;
  }

  @override
  Future<void> setJson(String key, Map<String, dynamic> json) async {
    _json = json;
  }
}
