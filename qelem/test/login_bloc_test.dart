import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/application/login/login_bloc.dart';
import 'package:qelem/application/login/login_event.dart';
import 'package:qelem/application/login/login_state.dart';
import 'package:qelem/domain/auth/login_form.dart';
import 'package:qelem/data/local/shared_prefs/shared_prefs_service.dart';
import 'package:qelem/domain/auth/password.dart';
import 'package:qelem/domain/auth/registration_form.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/auth/username.dart';
import 'package:qelem/infrastructure/auth/auth_api.dart';
import 'package:qelem/infrastructure/auth/auth_repository.dart';
import 'package:qelem/domain/auth/login_response.dart';
import 'package:qelem/infrastructure/auth/auth_response_dto.dart';
import 'package:qelem/infrastructure/auth/user_dto.dart';
import 'package:qelem/infrastructure/auth/user_model_mapper.dart';
import 'package:qelem/util/either.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockSharedPrefsService extends Mock implements SharedPrefsService {}

class MockAuthApi extends Mock implements AuthApi {}

class MockLoginForm extends Mock implements LoginForm {}

class MockRegistrationForm extends Mock implements RegistrationForm {}

class MockLoginResponse extends Mock implements LoginReponse {}

void main() {
  setUp(() {});
  group("LoginBloc", () {
    test("should emit [LoginInitial, LoginLoading, LoginSuccess] when login is successful",
        () async {
      //arrange
      final mockAuthRepository = MockAuthRepository();
      final mockSharedPrefsService = MockSharedPrefsService();
      final mockAuthApi = MockAuthApi();
      final mockLoginForm = MockLoginForm();
      final mockLoginResponse = MockLoginResponse();
      final loginBloc = LoginBloc(mockAuthRepository);
      // final mockLoginForm = LoginForm(
      //   userName: "username",
      //   password: "password",
      // );
      // mockLoginForm = LoginForm(userName: UserName("userName"), password: Password("password"));
      AuthResponseDto response = const AuthResponseDto(
          jwt: "jwt",
          user: UserDto(
            id: 1,
            userName: "username",
            lastName: "lastName",
            firstName: "firstName",
            profilePicture: 'profilePicture',
            role: 'role',
          ));
      Future<Either<LoginReponse>> resp() async => Either(
              val: LoginReponse(
            jwt: response.jwt,
            user: response.user.toUser(),
          ));
      when(mockAuthRepository.login(
              loginForm: LoginForm(userName: UserName("username"), password: Password("password"))))
          .thenAnswer((_) async => resp());

      loginBloc.add(LoginEventLogin(
          LoginForm(userName: UserName("username"), password: Password("password"))));
      //assert
      expectLater(
          loginBloc,
          emitsInOrder([
            await LoginStateLoading(),
            await LoginStateSuccess(response.user.toUser(), response.jwt),
          ]));
    });
  });
}
