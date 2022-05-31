import 'dart:convert';

import 'package:qelem/infrastructure/auth/auth_response_dto.dart';
import 'package:qelem/infrastructure/auth/register_form_dto.dart';
import 'package:qelem/infrastructure/auth/user_dto.dart';
import 'package:qelem/util/my_http_client.dart';

class AuthApi {
  static const String _loginUrl = "auth/login";
  static const String _registerUrl = "auth/register";

  final MyHttpClient _httpClient;

  AuthApi(this._httpClient);

  Future<AuthResponseDto> login(
      {required String username, required String password}) async {
    var body = jsonEncode({
      'username': username,
      'password': password,
    });

    var response = await _httpClient.post(_loginUrl, body: body);

    final Map<String, dynamic> data = json.decode(response.body);

    if (response.statusCode == 200) {
      return AuthResponseDto.fromJson(data);
    } else {
      throw Exception(data['message'] ?? "Unkown error");
    }
  }

  Future<UserDto> register({required RegisterFormDto registerForm}) async {
    var response =
        await _httpClient.post(_registerUrl, body: registerForm.toJson());

    final Map<String, dynamic> data = json.decode(response.body);

    if (response.statusCode == 202) {
      return UserDto.fromJson(data);
    } else {
      throw Exception(data['message'] ?? "Unkown error");
    }
  }
}
