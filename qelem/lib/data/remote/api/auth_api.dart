import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qelem/common/constants.dart';
import 'package:qelem/data/remote/models/user_model.dart';

class AuthApi {
  static const String _loginUrl = "${Constants.BASE_URL}authenticate";
  static const String _registerUrl = "${Constants.BASE_URL}users";
  static const String _logoutUrl = "${Constants.BASE_URL}logout";

  static Future<String> login({
    required String username,
    required String password,
  }) async {
    var body = jsonEncode({
      'username': username,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(_loginUrl),
      headers: {"Content-Type": "application/json"},
      body: body,
    );

    final Map<String, dynamic> data = json.decode(response.body);

    if (response.statusCode == 200) {
      return data["jwt"]!;
    } else {
      throw Exception(data['message'] ?? "Unkown error");
    }
  }

  static Future<UserModel> register({
    required String username,
    required String firstName,
    required String lastName,
    required String password,
  }) async {
    var body = jsonEncode({
      'username': username,
      'firstName': firstName,
      'lastName': lastName,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(_registerUrl),
      body: body,
      headers: {"Content-Type": "application/json"},
    );

    final Map<String, dynamic> data = json.decode(response.body);

    if (response.statusCode == 202) {
      return UserModel.fromJson(data);
    } else {
      throw Exception(data['message'] ?? "Unkown error");
    }
  }

  static Future<http.Response> logout() async {
    return http.post(Uri.parse(_logoutUrl));
  }
}
