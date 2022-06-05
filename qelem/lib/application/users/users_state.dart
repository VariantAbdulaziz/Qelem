import 'package:equatable/equatable.dart';
import 'package:qelem/domain/auth/user.dart';

abstract class UsersState extends Equatable {
  UsersState();

  @override
  List<Object> get props => [];
}

/// UnInitialized
class UnUsersState extends UsersState {
  UnUsersState();

  @override
  String toString() => 'UnUsersState';
}

// Loading
class LoadingUsersState extends UsersState {
  LoadingUsersState();

  @override
  String toString() => 'LoadingUsersState';
}

/// Initialized
class InUsersState extends UsersState {
  InUsersState(this.users);

  final List<User> users;

  @override
  String toString() => 'InUsersState $users';

  @override
  List<Object> get props => [users];
}

class ErrorUsersState extends UsersState {
  ErrorUsersState(this.errorMessage);

  final String errorMessage;

  @override
  String toString() => 'ErrorUsersState';

  @override
  List<Object> get props => [errorMessage];
}
