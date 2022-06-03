import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/application/login/login_bloc.dart';
import 'package:qelem/application/login/login_event.dart';
import 'package:qelem/application/login/login_state.dart';
import 'package:qelem/domain/auth/login_form.dart';
import 'package:qelem/domain/auth/login_response.dart';
import 'package:qelem/domain/auth/password.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/auth/username.dart';
import 'package:qelem/infrastructure/auth/auth_repository.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

import 'login_bloc_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
  });

  group("LoginBloc", () {
    test("should emit [LoginInitial, LoginLoading, LoginSuccess] when login is successful",
        () async {

      final mockUser = User(
        userName: "username",
        lastName: "lastName",
        firstName: "firstName",
        id: 1,
        profilePicture: "profilePicture",
      );

      final loginForm = LoginForm(
        userName: UserName("username"),
        password: Password("password"),
      );

      when(mockAuthRepository.login(loginForm: loginForm))
          .thenAnswer((_) async => Either(val: LoginReponse(jwt: "jwt", user: mockUser)));

      final loginBloc = LoginBloc(mockAuthRepository);

      loginBloc.add(LoginEventLogin(loginForm));

      expectLater(
          loginBloc.stream,
          emitsInOrder([
            const LoginStateLoading(),
            LoginStateSuccess(mockUser, "jwt"),
          ]));
    });

    test("should emit [LoadingLoading, LoginStateFailure] when login fails", () async {

      final loginForm = LoginForm(
        userName: UserName("username"),
        password: Password("password"),
      );

      when(mockAuthRepository.login(loginForm: loginForm))
          .thenAnswer((_) async => Either(error: Error("error")));

      final loginBloc = LoginBloc(mockAuthRepository);

      loginBloc.add(LoginEventLogin(loginForm));

      expectLater(
          loginBloc.stream,
          emitsInOrder([
            const LoginStateLoading(),
            LoginStateFailure(Error("error")),
          ]));
    });
  });
}
