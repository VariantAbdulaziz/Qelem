import 'dart:convert';

import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/infrastructure/auth/user_dto.dart';
import 'package:qelem/infrastructure/auth/user_model_mapper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  Future<void> setJwtToken(String token) async {
    return SharedPreferences.getInstance()
        .then((value) => value.setString('token', token));
  }

  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  Future<void> removeToken() async {
    return await SharedPreferences.getInstance()
        .then((value) => value.remove('token'));
  }

  Future<bool> isFirstRun() async {
    return SharedPreferences.getInstance().then((prefs) {
      return prefs.getBool('firstRun') ?? true;
    });
  }

  Future<void> setFirstRun(bool isFirstRun) async {
    return SharedPreferences.getInstance().then((prefs) {
      prefs.setBool('firstRun', isFirstRun);
    });
  }

  Future<User?> getAuthenticatedUser() async {
    return SharedPreferences.getInstance().then((prefs) {
      var user = prefs.getString('user');
      if (user == null) {
        return null;
      }
      return UserDto.fromJson(json.decode(user)).toUser();
    });
  }

  Future<void> setAuthenticatedUser(User user) async {
    return SharedPreferences.getInstance().then((prefs) {
      prefs.setString('user', json.encode(user.toUserDto().toJson()));
    });
  }

  Future<void> removeAuthenticatedUser() {
    return SharedPreferences.getInstance().then((prefs) {
      prefs.remove('user');
    });
  }
}
