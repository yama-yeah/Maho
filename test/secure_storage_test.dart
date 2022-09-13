import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/data/secure_storage.dart';

void main() {
  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    const MethodChannel channel =
        MethodChannel('plugins.it_nomads.com/flutter_secure_storage');
    channel.setMockMethodCallHandler((methodCall) async {
      return '.';
    });
  });

  test('', () async {
    final storage = ProviderContainer().read(keyStoreProvider);
    Map<String, dynamic> json = {'hello': 'test'};
    await storage.setJson('test', json);
    json = await storage.getJson('test');
    print(json);
  });
}
