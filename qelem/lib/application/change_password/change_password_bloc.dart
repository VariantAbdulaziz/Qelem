import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/change_password/change_password_event.dart';
import 'package:qelem/application/change_password/change_password_state.dart';
import 'package:qelem/infrastructure/auth/auth_repository.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final AuthRepository _authRepository;
  bool isAuth = false;

  _checkAuth() async {
    isAuth = AuthRepository.loggedIn() as bool;
  }

  //TODO handle if not logged in
  ChangePasswordBloc(this._authRepository)
      : super(const ChangePasswordState.initial()) {
    if (AuthRepository.loggedIn() as bool) {
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
}
