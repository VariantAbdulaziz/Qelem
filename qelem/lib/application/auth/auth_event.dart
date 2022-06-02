import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/auth/user.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signedIn(User user, String token) = AuthEventSignedIn;
  const factory AuthEvent.signOut() = AuthEventSignOut;
}
