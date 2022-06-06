import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/application/registration/registration_bloc.dart';
import 'package:qelem/application/registration/registration_event.dart';
import 'package:qelem/application/registration/registration_state.dart';
import 'package:qelem/domain/auth/auth_repository_interface.dart';
import 'package:qelem/domain/auth/password.dart';
import 'package:qelem/domain/auth/registration_form.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/auth/user_role.dart';
import 'package:qelem/domain/auth/username.dart';
import 'package:qelem/infrastructure/auth/auth_repository.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

import 'registration_bloc_test.mocks.dart';

@GenerateMocks([AuthRepositoryInterface])
void main() {
  late MockAuthRepositoryInterface mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepositoryInterface();
  });

  group("RegistrationBloc", () {
    test(
        "should emit [RegistrationStateLoading, RegistrationStateSuccess] when registration is successful",
        () async {
      final mockUser = User(
        userName: "username",
        lastName: "lastName",
        firstName: "firstName",
        id: 1,
        profilePicture: "profilePicture",
        role: Role.member,
      );

      final registrationForm = RegistrationForm(
        userName: UserName("username"),
        password: Password("password"),
        firstName: "firstName",
        lastName: "lastName",
      );

      when(mockAuthRepository.register(registerForm: registrationForm))
          .thenAnswer((_) async => Either(val: mockUser));

      final registrationBloc = RegistrationBloc(mockAuthRepository);

      registrationBloc.add(RegistrationEventRegister(registrationForm));

      expectLater(
          registrationBloc.stream,
          emitsInOrder([
            const RegistrationStateLoading(),
            const RegistrationStateSuccess(),
          ]));
    });

    test(
        "should emit [RegistrationStateLoading, RegistrationStateFailure] when registration fails",
        () async {
      final registrationForm = RegistrationForm(
        userName: UserName("username"),
        password: Password("password"),
        firstName: "firstName",
        lastName: "lastName",
      );

      when(mockAuthRepository.register(registerForm: registrationForm))
          .thenAnswer((_) async => Either(error: Error("error")));

      final registrationBloc = RegistrationBloc(mockAuthRepository);

      registrationBloc.add(RegistrationEventRegister(registrationForm));

      expectLater(
          registrationBloc.stream,
          emitsInOrder([
            const RegistrationStateLoading(),
            RegistrationStateFailure(Error("error")),
          ]));
    });
  });
}
