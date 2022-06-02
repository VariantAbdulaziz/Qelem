import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/data/local/shared_prefs/shared_prefs_service.dart';
import 'package:qelem/infrastructure/auth/auth_repository.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const AuthUnInitialized()) {
    () async {
      var authToken = await authRepository.getAuthToken();
      bool firstRun = await SharedPrefsService.isFirstRun();
      emit(AppInitialized(token: authToken, isFirstRun: firstRun));
    }();

    on<AuthEventSignedIn>(
      ((event, emit) async {
        SharedPrefsService.setFirstRun(false);
        emit(AuthAuthenticated(event.user, event.token));
      }),
    );
    on<AuthEventSignedOut>(((event, emit) async {
      emit(const AuthUnauthenticated());
    }));
  }
}
