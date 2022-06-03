import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/application/login/login_bloc.dart';
import 'package:qelem/application/login/login_event.dart';
import 'package:qelem/application/login/login_state.dart';
import 'package:qelem/domain/auth/login_form.dart';
import 'package:qelem/data/local/shared_prefs/shared_prefs_service.dart';
import 'package:qelem/domain/auth/registration_form.dart';
import 'package:qelem/domain/auth/user.dart';
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

  setUp(() {

  });
  group("LoginBloc", () {
    test("should emit [LoginInitial, LoginLoading, LoginSuccess] when login is successful", () async {
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
      AuthResponseDto response = const AuthResponseDto(jwt: "jwt", user: UserDto(
        id: 1,
        userName: "username",
        lastName: "lastName",
        firstName: "firstName",
        profilePicture: 'profilePicture', role: 'role',
      ));
      Future<AuthResponseDto> resp() async => response;
      when(mockAuthApi.login(username: "username", password: "password")).thenReturn(resp());
      // when(mockLoginForm.toDto()).thenReturn(mockLoginFormDto);
      when(mockAuthRepository.login(loginForm: mockLoginForm)).thenAnswer((_) async => Either(
          val: LoginReponse(
            jwt: response.jwt,
            user: response.user.toUser(),
          )));
      // when(mockLoginResponse.jwt).thenReturn("jwt");
      // when(mockLoginResponse.user).thenReturn(UserDto(
      //   id: 1,
      //   username: "username",
      //   email: "email",
      //   firstName: "firstName",
      //   lastName: "lastName",
      //   phone: "phone",
      //   address: "address",
      //   city: "city",
      //   country: "country",
      //   zipCode: "zipCode",
      //   avatar: "avatar",
      //   role: "role",
      // ));
      // final authBloc = LoginBloc(authRepository: mockAuthRepository, sharedPrefsService: mockSharedPrefsService, authApi: mockAuthApi);
      //act
      loginBloc.add(LoginEventLogin(mockLoginForm));
      //assert
      expectLater(loginBloc, emitsInOrder([
        LoginStateLoading(),
        LoginStateSuccess(response.user.toUser(), response.jwt),
      ]));
    });
  });
  // group("LoginBloc", () {
    // test("should emit [LoginInitial, LoginLoading, LoginSuccess] when login is successful", () async {
      // final mockAuthRepository = MockAuthRepository();
      // final mockAuthApi = MockAuthApi();
      // final mockLoginForm = MockLoginForm();
      // final mockLoginResponse = MockLoginResponse();
      // // final mockUser = MockUser();
      // // final mockLoginReponse = MockLoginReponse();
      // // final mockLoginSuccess = MockLoginSuccess();
      // // final mockLoginLoading = MockLoginLoading();
      // // final mockLoginError = MockLoginError();
      //
      // final authoBloc = AuthBloc(authRepository: mockAuthRepository);
      //
      //
      // when(mockLoginForm.validate()).thenAnswer((_) async => true);
      // when(mockAuthRepository.login(loginForm: anyNamed("loginForm")))
      //     .thenAnswer((_) async => Right(mockLoginResponse));
      // when(mockLoginResponse.user).thenReturn(mockUser);
      // when(mockLoginResponse.jwt).thenReturn("jwt");
      // when(mockUser.toUser()).thenReturn(mockUser);
      // when(mockLoginSuccess(user: anyNamed("user"))).thenReturn(mockLoginSuccess);
      // when(mockLoginLoading()).thenReturn(mockLoginLoading);
      //
      // final authBloc = LoginBloc(mockAuthRepository);

      //   expectLater(authBloc, emitsInOrder([mockLoginLoading, mockLoginSuccess]));
      //
      //   authBloc.add(LoginButtonPressed(loginForm: mockLoginForm));
      // });

      // test("should emit [LoginInitial, LoginLoading, LoginError] when login fails", () async {
      //   final mockAuthRepository = MockAuthRepository();
      //   final mockLoginForm = MockLoginForm();
      //   final mockLoginResponse = MockLoginResponse();
      //   final mockLoginSuccess = MockLoginSuccess();
      //   final mockLoginLoading = MockLoginLoading();
      //   final mockLoginError = MockLoginError();
      //
      //   when(mockLoginForm.validate()).thenAnswer((_) async => true);
      //   when(mockAuthRepository.login(loginForm: anyNamed("loginForm")))
      //       .thenAnswer((_) async => Left(mockLogin Response));
      //   when(mockLoginResponse.user).thenReturn(mockUser);
      //   when(mockLoginResponse.jwt).thenReturn("jwt");
      //   when(mockUser.toUser()).thenReturn(mockUser);
      //   when(mockLoginSuccess(user: anyNamed("user"))).thenReturn(mockLoginSuccess);
      //   when(mockLoginLoading()).thenReturn(mockLoginLoading);
      //   when(mockLoginError(error: anyNamed("error"))).thenReturn(mockLoginError);
      }
