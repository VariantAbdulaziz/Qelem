import 'package:qelem/infrastructure/auth/auth_api.dart';
import 'package:qelem/data/local/shared_prefs/shared_prefs_service.dart';
import 'package:qelem/infrastructure/auth/auth_response_dto.dart';
import 'package:qelem/infrastructure/auth/register_form_dto.dart';
import 'package:qelem/infrastructure/auth/user_dto.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'package:qelem/infrastructure/auth/change_password_form_dto.dart';
import 'package:qelem/util/error.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/infrastructure/auth/user_model_mapper.dart';

class AuthRepository {
  AuthApi authApi;

  AuthRepository(this.authApi);

  Future<Either<User>> register({required RegisterFormDto registerForm}) async {
    try {
      UserDto user = await authApi.register(registerForm: registerForm);
      return Either(val: user.toUser());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    }
  }

  Future<Either<void>> login({
    required String username,
    required String password,
  }) async {
    try {
      AuthResponseDto response =
          await authApi.login(username: username, password: password);
      SharedPrefsService.addToken(response.jwt);
      return Either();
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    }
  }

  Future<void> changePassword(
      {required ChangePasswordFormDto changePasswordFormDto}) async {
    await authApi.changePassword(changePasswordFormDto);
  }

  static Future<bool> loggedIn() async {
    String token = await SharedPrefsService.getToken();
    return token != "";
  }
}
