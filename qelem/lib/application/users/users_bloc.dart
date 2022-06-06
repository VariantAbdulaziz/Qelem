import 'package:bloc/bloc.dart';
import 'package:qelem/domain/users/users_repository_interface.dart';

import 'users_event.dart';
import 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UsersRepositoryInterface _usersRepository;

  UsersBloc(UsersState initialState, this._usersRepository)
      : super(initialState) {
    on<LoadUsersUsersEvent>(((event, emit) {
      _refresh();
    }));

    on<SetUserRoleUsersEvent>(((event, emit) async {
      await _usersRepository.setUserRole(event.user, event.userRole);
      _refresh();
    }));
  }

  _refresh() {
    emit(LoadingUsersState());
    _usersRepository.getUsers().then((users) {
      if (users.hasError) {
        emit(ErrorUsersState(users.error!.message));
      } else {
        emit(InUsersState(users.val!));
      }
    });
  }
}
