import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/auth/password.dart';
import 'package:qelem/domain/auth/username.dart';

part 'registration_form.freezed.dart';

@freezed
class RegistrationForm with _$RegistrationForm {
  const factory RegistrationForm({
    required UserName userName,
    required Password password,
    required String firstName,
    required String lastName,
  }) = _RegisterForm;
}
