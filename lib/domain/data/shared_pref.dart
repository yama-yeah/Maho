import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getPrefInstanceProvider = FutureProvider((ref) async {
  return await SharedPreferences.getInstance();
});
