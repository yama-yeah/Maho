import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:maho/domain/model/task_model.dart';
//import 'package:intl/intl.dart';
import '../../../utils/service_util.dart';
import '../../model/fun_model.dart';

class FunApi implements FunApiInterface {
  final _url = 'https://fun-hope-api.azurewebsites.net/';
  final Map<String, String> _headers = {'content-type': 'application/json'};
  FunApi() : super();
  @override
  Future<String> login(FunUserModel user) async {
    //final user = ref.read(funApiStateProvider);
    String body = convert.json.encode(user.toJson());
    try {
      var raw = await http.post(Uri.parse('${_url}login'),
          body: body, headers: _headers);
      return json2map(raw)['status'];
    } catch (e) {
      Logger().e("FunApi:$e");
      return 'error';
    }
  }

  @override
  Future<RawTasksModel> getTasks(FunUserModel user) async {
    String body = convert.json.encode(user.toJson());
    Map<String, dynamic> json = {};
    try {
      final raw = await http.post(Uri.parse('${_url}tasks'),
          body: body, headers: _headers);
      Logger().i('fetched');
      json = json2map(raw);
    } catch (e) {
      Logger().e(e);
      json['status'] = 'error';
    }

    return RawTasksModel.fromJson(json);
  }
}

abstract class FunApiInterface {
  FunApiInterface();
  Future<String> login(FunUserModel user);
  Future<RawTasksModel> getTasks(FunUserModel user);
}
