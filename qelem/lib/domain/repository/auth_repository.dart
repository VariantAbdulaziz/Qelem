import 'package:qelem/data/remote/api/auth_api.dart';
import 'package:qelem/data/remote/models/user_model.dart';
import 'package:qelem/data/local/shared_prefs/shared_prefs_service.dart';

class AuthRepository {
  Future<UserModel> register({
    required String username,
    required String firstName,
    required String lastName,
    required String password,
  }) async {
    UserModel user = await AuthApi.register(
        username: username,
        firstName: firstName,
        lastName: lastName,
        password: password);
    return user;
  }

  void login({
    required String username,
    required String password,
  }) async {
    String token = await AuthApi.login(username: username, password: password);
    SharedPrefsService.addToken(token);
  }

  static Future<bool> loggedIn() async {
    String token = await SharedPrefsService.getToken();
    return token != "";
  }
}
