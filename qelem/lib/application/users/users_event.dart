import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/auth/user_role.dart';

part 'users_event.freezed.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const UsersEvent._();

  factory UsersEvent.loadUsers() = LoadUsersUsersEvent;

  factory UsersEvent.setUserRole(Role userRole, User user) =
      SetUserRoleUsersEvent;
}
