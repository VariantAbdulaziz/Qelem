import 'package:qelem/domain/auth/change_password_form.dart';
import 'package:qelem/domain/auth/login_form.dart';
import 'package:qelem/domain/auth/login_response.dart';
import 'package:qelem/domain/auth/registration_form.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/util/either.dart';

abstract class AuthRepositoryInterface {
  Future<Either<User>> register({required RegistrationForm registerForm});

  Future<Either<LoginReponse>> login({required LoginForm loginForm});

  Future<Either<void>> changePassword(
      {required ChangePasswordForm changePasswordForm});

  Future<String?> getAuthToken();

  Future<void> logout();

  Future<int?> getUserId();
}
