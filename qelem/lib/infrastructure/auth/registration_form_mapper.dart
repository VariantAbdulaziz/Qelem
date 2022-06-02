import 'package:qelem/domain/auth/registration_form.dart';
import 'package:qelem/infrastructure/auth/register_form_dto.dart';

extension RegistrationFormMapper on RegistrationForm {
  RegisterFormDto toDto() => RegisterFormDto(
        username: userName.value,
        password: password.value,
        firstName: firstName,
        lastName: lastName,
      );
}
