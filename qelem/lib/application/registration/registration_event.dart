import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/auth/registration_form.dart';

part 'registration_event.freezed.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const RegistrationEvent._();

  const factory RegistrationEvent.register(RegistrationForm form) =
      RegistrationEventRegister;
}
