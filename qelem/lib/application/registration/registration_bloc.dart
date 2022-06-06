import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/registration/registration_event.dart';
import 'package:qelem/application/registration/registration_state.dart';
import 'package:qelem/domain/auth/auth_repository_interface.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final AuthRepositoryInterface _authRepository;

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
