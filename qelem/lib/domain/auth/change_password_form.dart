import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'change_password_form.freezed.dart';

@freezed
class ChangePasswordForm with _$ChangePasswordForm {
  factory ChangePasswordForm({
    required String username,
    required String oldPassword,
    required String newPassword,
  }) = _ChangePasswordForm;

  factory ChangePasswordForm.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordFormFromJson(json);
}
