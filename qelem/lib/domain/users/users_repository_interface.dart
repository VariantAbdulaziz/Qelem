import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/auth/user_role.dart';
import 'package:qelem/util/either.dart';

abstract class UsersRepositoryInterface {
  Future<Either<List<User>>> getUsers();

  Future<Either<User>> setUserRole(User user, Role role);
}
