import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('', () async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('a', 1);
    print(prefs.getInt('a'));
  });
}
