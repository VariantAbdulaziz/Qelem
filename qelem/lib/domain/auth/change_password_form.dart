import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:qelem/domain/auth/password.dart';
import 'package:qelem/domain/auth/username.dart';

part 'change_password_form.freezed.dart';

@freezed
class ChangePasswordForm with _$ChangePasswordForm {
  factory ChangePasswordForm({
    required UserName userName,
    required Password currentPassword,
    required Password newPassword,
  }) = _ChangePasswordForm;
}
