import 'package:qelem/domain/auth/user_role.dart';
import 'package:qelem/infrastructure/user/local/user_entity.dart';

import '../../../domain/auth/user.dart';

extension UserEntityMapper on UserEntity {
  User toUser() {
    return User(
      id: id,
      userName: userName,
      firstName: firstName,
      lastName: lastName,
      profilePicture: profilePicture,
      role: role == 'ADMIN' ? Role.admin : Role.member,
    );
  }
}
