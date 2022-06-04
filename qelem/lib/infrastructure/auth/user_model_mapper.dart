import 'package:qelem/common/constants.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/infrastructure/auth/user_dto.dart';

import '../user/local/user_entity.dart';

extension UserMapper on UserDto {
  User toUser() {
    return User(
      id: id,
      userName: userName,
      firstName: firstName,
      lastName: lastName,
      profilePicture: Constants.imagesBaseUrl + profilePictureRelativeUrl,
    );
  }

  UserEntity toUserEntity() {
    return UserEntity(
      id: id,
      userName: userName,
      firstName: firstName,
      lastName: lastName,
      profilePicture: Constants.imagesBaseUrl + profilePictureRelativeUrl,
    );
  }
}
