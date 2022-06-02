import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/registration/registration_event.dart';
import 'package:qelem/application/registration/registration_state.dart';
import 'package:qelem/infrastructure/auth/auth_repository.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final AuthRepository _authRepository;

  RegistrationBloc(this._authRepository)
      : super(const RegistrationState.initial()) {
    on<RegistrationEventRegister>(
      ((event, emit) async {
        emit(const RegistrationStateLoading());
        var result = await _authRepository.register(registerForm: event.form);
        if (result.hasError) {
          emit(RegistrationStateFailure(result.error!));
        } else {
          emit(const RegistrationStateSuccess());
        }
      }),
    );
  }
}
