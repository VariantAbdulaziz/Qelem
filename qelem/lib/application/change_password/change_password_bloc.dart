import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/change_password/change_password_event.dart';
import 'package:qelem/application/change_password/change_password_state.dart';

import '../../domain/auth/auth_repository_interface.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final AuthRepositoryInterface _authRepository;

  ChangePasswordBloc(this._authRepository)
      : super(const ChangePasswordState.initial()) {
    on<ChangePasswordEvent>(((event, emit) async {
      emit(const ChangePasswordState.loading());

      var result = await _authRepository.changePassword(
          changePasswordForm: event.passwordForm);

      if (result.hasError) {
        emit(ChangePasswordStateFailure(result.error!));
      } else {
        emit(const ChangePasswordStateSuccess());
      }
    }));
  }
}
