import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart' as http;

class RegisterResponse {
  String id;
  String name;
  String job;
  String createdAt;

  RegisterResponse(
      {required this.id,
      required this.name,
      required this.job,
      required this.createdAt});

  factory RegisterResponse.creatRegristerResponse(Map<String, dynamic> object) {
    return RegisterResponse(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        createdAt: object['createdAt']);
  }

  static Future<RegisterResponse> connectTopAPI(String name, String job) async {
    var apiUrl = Uri.parse("https://reqres.in/api/users");
    var apiResult = await http.post(apiUrl, Body: {"name": name, "job": job});

    var jsonObject = json.decode(apiResult.body);

    return RegisterResponse.creatRegristerResponse(jsonObject);
  }
}
