import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/application/change_password/change_password_bloc.dart';
import 'package:qelem/application/change_password/change_password_event.dart';
import 'package:qelem/application/change_password/change_password_state.dart';
import 'package:qelem/domain/auth/change_password_form.dart';
import 'package:qelem/domain/auth/password.dart';
import 'package:qelem/infrastructure/auth/auth_repository.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

import 'change_password_bloc_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
  });

  group("ChangePasswordBloc", () {
    test(
        "should emit [ChangePasswordState.loading, ChangePasswordStateSuccess] when change password is successful",
        () async {
      final changePasswordForm = ChangePasswordForm(
        currentPassword: Password("oldPassword"),
        newPassword: Password("newPassword"),
      );

      when(mockAuthRepository.changePassword(changePasswordForm: changePasswordForm))
          .thenAnswer((_) async => Either());

      final changePasswordBloc = ChangePasswordBloc(mockAuthRepository);
      changePasswordBloc.add(ChangePasswordEvent.changePassword(changePasswordForm));

      expectLater(
          changePasswordBloc.stream,
          emitsInOrder([
            const ChangePasswordState.loading(),
            const ChangePasswordStateSuccess(),
          ]));
    });

    test(
        "should emit [ChangePasswordState.loading, ChangePasswordStateFailure] when change password is unsuccessful",
        () async {
      final changePasswordForm = ChangePasswordForm(
        currentPassword: Password("oldPassword"),
        newPassword: Password("newPassword"),
      );

      when(mockAuthRepository.changePassword(changePasswordForm: changePasswordForm))
          .thenAnswer((_) async => Either(error: Error("error")));

      final changePasswordBloc = ChangePasswordBloc(mockAuthRepository);
      changePasswordBloc.add(ChangePasswordEvent.changePassword(changePasswordForm));

      expectLater(
          changePasswordBloc.stream,
          emitsInOrder([
            const ChangePasswordState.loading(),
            ChangePasswordStateFailure(Error("error")),
          ]));
    });
  });
}
