import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:maho/domain/model/task_model.dart';
//import 'package:intl/intl.dart';
import '../../../utils/service_util.dart';
import '../../data/secure_storage.dart';
import '../../model/fun_model.dart';

class FunApi implements FunApiInterface {
  final _url = 'https://fun-student-api.azurewebsites.net/';
  final Map<String, String> _headers = {'content-type': 'application/json'};
  FunApi() : super();
  @override
  Future<bool> login(FunUserModel user) async {
    //final user = ref.read(funApiStateProvider);
    String body = convert.json.encode(user.toJson());
    print(body);
    var raw = await http.post(Uri.parse('${_url}login'),
        body: body, headers: _headers);
    print(raw);
    return await json2map(raw)['status'] == 'success';
  }

  @override
  Future<RawTasksModel> getTasks(FunUserModel user) async {
    String body = convert.json.encode(user.toJson());
    Map<String, dynamic> json = {};
    try {
      final raw = await http.post(Uri.parse('${_url}tasks'),
          body: body, headers: _headers);
      json = await json2map(raw);
    } catch (e) {
      json['status'] = 'error';
    }

    return RawTasksModel.fromJson(json);
  }
}

abstract class FunApiInterface {
  FunApiInterface();
  Future<bool> login(FunUserModel user);
  Future<RawTasksModel> getTasks(FunUserModel user);
}
