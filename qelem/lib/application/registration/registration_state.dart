import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/util/error.dart';

part 'registration_state.freezed.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = RegistrationStateInitial;
  const factory RegistrationState.loading() = RegistrationStateLoading;
  const factory RegistrationState.success() = RegistrationStateSuccess;
  const factory RegistrationState.failure(Error error) =
      RegistrationStateFailure;
}
