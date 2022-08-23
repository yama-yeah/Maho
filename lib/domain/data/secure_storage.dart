import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'dart:convert' as convert;

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maho/domain/model/fun_model.dart';
import 'package:path/path.dart';

final secureStorageInstanceProvider =
    Provider((ref) => const FlutterSecureStorage());

abstract class KeyStoreInterface {
  KeyStoreInterface(FlutterSecureStorage storage);
  Future<void> setJson(String key, Map<String, dynamic> json);
  Future<Map<String, dynamic>> getJson(String key);
}

class KeyStore extends KeyStoreInterface {
  FlutterSecureStorage storage;
  KeyStore(this.storage) : super(storage);
  @override
  Future<void> setJson(String key, Map<String, dynamic> json) async {
    final jsonString = convert.json.encode(json);
    storage.write(key: 'key', value: jsonString);
  }

  @override
  Future<Map<String, dynamic>> getJson(String key) async {
    final raw = await storage.read(key: key);
    return raw != null ? convert.json.decode(raw) : FunUserModel().toJson();
  }
}

final keyStoreProvider = Provider<KeyStoreInterface>((ref) {
  return KeyStore(ref.watch(secureStorageInstanceProvider));
});
