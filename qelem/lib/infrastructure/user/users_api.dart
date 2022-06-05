import 'dart:convert';

import 'package:qelem/domain/auth/user_role.dart';
import 'package:qelem/infrastructure/auth/user_dto.dart';
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'package:qelem/util/my_http_client.dart';

class UsersApi {
  final MyHttpClient _httpClient;

  UsersApi(this._httpClient);

  Future<List<UserDto>> getUsers() async {
    final response = await _httpClient.get('admin/users');
    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((e) => UserDto.fromJson(e))
          .toList();
    }
    throw QHttpException(
        json.decode(response.body)['message'] ?? "Unknown error",
        response.statusCode);
  }

  Future<UserDto> setUserRole(int userId, Role role) async {
    final b = json.encode({'role': role == Role.admin ? 'ADMIN' : 'MEMBER'});
    final response = await _httpClient.put('admin/users/$userId', body: b);

    if (response.statusCode == 200 || response.statusCode == 201) {
      return UserDto.fromJson(json.decode(response.body));
    }
    throw QHttpException(
        json.decode(response.body)['message'] ?? 'Unknown error',
        response.statusCode);
  }
}
