import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/domain/auth/auth_repository_interface.dart';
import 'package:qelem/domain/auth/change_password_form.dart';
import 'package:qelem/domain/auth/login_form.dart';
import 'package:qelem/domain/auth/login_response.dart';
import 'package:qelem/domain/auth/password.dart';
import 'package:qelem/domain/auth/registration_form.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/auth/user_role.dart';
import 'package:qelem/domain/auth/username.dart';
import 'package:qelem/util/either.dart';

import 'auth_repo_test.mocks.dart';

@GenerateMocks([AuthRepositoryInterface])
void main() {
  late MockAuthRepositoryInterface mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepositoryInterface();
  });

  group('Auth repo tests', () {
    test('test login', () async {
      final mockUser = User(
          userName: "username",
          lastName: "lastName",
          firstName: "firstName",
          id: 1,
          profilePicture: "profilePicture",
          role: Role.member);

      final loginForm = LoginForm(
        userName: UserName("username"),
        password: Password("password"),
      );

      final mockResponse = LoginReponse(user: mockUser, jwt: 'jwt');

      when(mockAuthRepository.login(loginForm: loginForm)).thenAnswer(
          (_) async => Either(val: LoginReponse(jwt: "jwt", user: mockUser)));

      final result = await mockAuthRepository.login(loginForm: loginForm);

      expect(result, isA<Either<LoginReponse>>());
      expect(result.val, mockResponse);
    });

    test('test register', () async {
      final mockUser = User(
          userName: "username",
          lastName: "lastName",
          firstName: "firstName",
          id: 1,
          profilePicture: "profilePicture",
          role: Role.member);

      final registerForm = RegistrationForm(
          userName: UserName("username"),
          password: Password("password"),
          firstName: 'firstName',
          lastName: 'lastName');

      when(mockAuthRepository.register(registerForm: registerForm))
          .thenAnswer((_) async => Either(val: mockUser));

      final result =
          await mockAuthRepository.register(registerForm: registerForm);

      expect(result, isA<Either<User>>());
      expect(result.val, mockUser);
    });

    test('test change password', () async {
      final changePasswordForm = ChangePasswordForm(
          currentPassword: Password('currentPassword'),
          newPassword: Password('newPassword'));

      when(mockAuthRepository.changePassword(
              changePasswordForm: changePasswordForm))
          .thenAnswer((_) async => Either(val: null));

      final result = await mockAuthRepository.changePassword(
          changePasswordForm: changePasswordForm);

      expect(result, isA<Either<void>>());
    });
  });
}
