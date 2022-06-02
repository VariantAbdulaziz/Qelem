import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/infrastructure/auth/change_password_form_dto.dart';

part 'change_password_event.freezed.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const ChangePasswordEvent._();

  const factory ChangePasswordEvent.changePassword(
          ChangePasswordFormDto passwordFormDto) =
      ChangePasswordEventChangePassword;
}
