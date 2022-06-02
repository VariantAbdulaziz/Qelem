import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/auth/password.dart';
import 'package:qelem/domain/auth/username.dart';

part 'login_form.freezed.dart';

@freezed
class LoginForm with _$LoginForm {
  const factory LoginForm({
    required UserName userName,
    required Password password,
  }) = _LoginForm;
}
