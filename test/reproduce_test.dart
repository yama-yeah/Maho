import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final read = ProviderContainer().read;

class TestModel {
  final int a;
  final int b;
  TestModel(this.a, this.b);
  TestModel copyWith({int? a, int? b}) {
    return TestModel(a ?? this.a, b ?? this.b);
  }
}

final controller = StreamController<int>();

final streamProvider = StreamProvider((ref) => controller.stream);

final stateProvider = StateProvider((ref) {
  final a = ref.watch(streamProvider).value ?? 1;
  return TestModel(a, 0);
});

final provider = Provider((ref) {
  final state = ref.watch(stateProvider);
  ref.onDispose(() => print('aaaaaa'));
  return () async {
    print(0);
    final notify = read(stateProvider.notifier);
    await Future.delayed(const Duration(seconds: 1));
    print(0);
    notify.state = notify.state.copyWith(b: 1);
  };
});

void main() {
  test('why error', () async {
    await read(provider)();
  });
}
