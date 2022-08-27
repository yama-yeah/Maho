import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/apis/funapi/funapi_domain.dart';
import 'package:maho/domain/apis/funapi/funapi_manager.dart';
import 'package:maho/domain/data/secure_storage.dart';
import 'package:maho/domain/model/task_model.dart';
import 'package:maho/domain/model/fun_model.dart';
import 'package:maho/domain/states/funapi_state.dart';
import 'package:mockito/mockito.dart';

class Listener extends Mock {
  void call(dynamic? previous, dynamic value);
}

void main() {
  final testKeyStore = TestKeyStore();
  final funApiManagerProvider = Provider<FunApiManagerInterface>((ref) {
    return FunApiManager(ref, TestApi(), testKeyStore);
  });
  test('login success test', () async {
    final loggedInListner = Listener();
    final container = ProviderContainer();
    //addTearDown(container.dispose);
    container.listen(
      funApiLoggedInStateProvider,
      loggedInListner,
      fireImmediately: true,
    );
    verify(loggedInListner(null, false)).called(1);
    final apiManager = container.read(funApiManagerProvider);
    final user = FunUserModel(userid: 'a');
    final flag = await apiManager.updateUser(user);
    //loggedInStateをTrueに変更する処理が含まれています。
    expect(flag, true);
    expect(await testKeyStore.getJson(''), user.toJson());

    //final loggedInState = container.read(funApiLoggedInStateProvider);
    //expect(loggedInState, true);
    //実機で動かすとTrueなのにtestではfalse（初期値）のままです。

    verify(loggedInListner(false, true)).called(1);
    //公式サイトをもとにやってみてもうまく行きませんでした；；
  });
}

class TestApi implements FunApiInterface {
  @override
  Future<RawTasksModel> getTasks(FunUserModel user) {
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
