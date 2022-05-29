import 'package:qelem/data/remote/api/auth_api.dart';
import 'package:qelem/data/remote/models/user_model.dart';

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

  Future<String> login({
    required String username,
    required String password,
  }) async {
    String token = await AuthApi.login(username: username, password: password);
    return token;
  }
}
