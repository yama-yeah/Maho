import 'package:http/http.dart' as http;
import 'dart:convert';

Map<String, dynamic> json2map(http.Response json) {
  String str = utf8.decode(json.bodyBytes);
  return jsonDecode(str);
}
