import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/auth/user.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unInitialized() = AuthUnInitialized;
  const factory AuthState.initial({String? token, required bool isFirstRun}) =
      AppInitialized;
  const factory AuthState.authenticated(User user, String token) =
      AuthAuthenticated;
  const factory AuthState.unauthenticated() = AuthUnauthenticated;
}
