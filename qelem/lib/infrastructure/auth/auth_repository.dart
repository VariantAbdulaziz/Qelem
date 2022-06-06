import 'dart:developer' as developer;
import 'dart:io';

import 'package:qelem/data/local/shared_prefs/shared_prefs_service.dart';
import 'package:qelem/domain/auth/auth_repository_interface.dart';
import 'package:qelem/domain/auth/change_password_form.dart';
import 'package:qelem/domain/auth/login_form.dart';
import 'package:qelem/domain/auth/login_response.dart';
import 'package:qelem/domain/auth/registration_form.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/infrastructure/auth/auth_api.dart';
import 'package:qelem/infrastructure/auth/auth_response_dto.dart';
import 'package:qelem/infrastructure/auth/registration_form_mapper.dart';
import 'package:qelem/infrastructure/auth/user_dto.dart';
import 'package:qelem/infrastructure/auth/user_model_mapper.dart';
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

class AuthRepository implements AuthRepositoryInterface {
  AuthApi authApi;
  SharedPrefsService sharedPrefsService;
  User? _authenticatedUser;

  AuthRepository(this.authApi, this.sharedPrefsService);

  @override
  Future<Either<User>> register(
      {required RegistrationForm registerForm}) async {
    try {
      UserDto user = await authApi.register(registerForm: registerForm.toDto());
      return Either(val: user.toUser());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while registering in user in Auth Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<LoginReponse>> login({required LoginForm loginForm}) async {
    try {
      AuthResponseDto response = await authApi.login(
          username: loginForm.userName.value,
          password: loginForm.password.value);
      await sharedPrefsService.setJwtToken(response.jwt);
      await sharedPrefsService.setAuthenticatedUser(response.user.toUser());

      _authenticatedUser = response.user.toUser();
      return Either(
          val: LoginReponse(
        jwt: response.jwt,
        user: response.user.toUser(),
      ));
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while logging in user in Auth Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<void>> changePassword(
      {required ChangePasswordForm changePasswordForm}) async {
    try {
      await authApi.changePassword(changePasswordForm);
      return Either(val: null);
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while logging in user in Auth Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<String?> getAuthToken() {
    return sharedPrefsService.getToken();
  }

  @override
  Future<void> logout() async {
    await sharedPrefsService.removeToken();
    await sharedPrefsService.removeAuthenticatedUser();
    _authenticatedUser = null;
  }

  @override
  Future<User?> getAuthenticatedUser() async {
    _authenticatedUser = await sharedPrefsService.getAuthenticatedUser();
    return _authenticatedUser;
  }

  @override
  User? getAuthenticatedUserSync() {
    return _authenticatedUser;
  }
}
