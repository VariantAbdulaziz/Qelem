import 'dart:developer' as developer;
import 'dart:io';

import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/auth/user_role.dart';
import 'package:qelem/domain/users/users_repository_interface.dart';
import 'package:qelem/infrastructure/auth/user_model_mapper.dart';
import 'package:qelem/infrastructure/users/users_api.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

import '../common/qelem_http_exception.dart';

class UsersRepository implements UsersRepositoryInterface {
  UsersApi _usersApi;

  UsersRepository(this._usersApi);

  @override
  Future<Either<List<User>>> getUsers() async {
    try {
      final usersDto = await _usersApi.getUsers();
      return Either(val: usersDto.map((e) => e.toUser()).toList());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while up voting while fetching all users in Users Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<User>> setUserRole(User user, Role role) async {
    try {
      final userDtoUpdated = await _usersApi.setUserRole(user.id, role);
      return Either(val: userDtoUpdated.toUser());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while up voting while fetching all setting user role in Users Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }
}
