import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/apis/funapi/funapi.dart';
import 'package:maho/domain/data/secure_storage.dart';
import 'package:maho/domain/model/fun_model.dart';
import 'package:maho/interface/secure_storage_provider.dart';

import 'package:maho/main.dart';

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
