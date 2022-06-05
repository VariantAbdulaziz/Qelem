import 'package:qelem/common/constants.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/auth/user_role.dart';
import 'package:qelem/infrastructure/auth/user_dto.dart';

extension UserMapper on UserDto {
  User toUser() {
    return User(
      id: id,
      userName: userName,
      firstName: firstName,
      lastName: lastName,
      profilePicture: Constants.imagesBaseUrl + profilePictureRelativeUrl,
      role: role == 'ADMIN' ? Role.admin : Role.member,
    );
  }
}

extension UserDtoMapper on User {
  UserDto toUserDto() {
    return UserDto(
      id: id,
      userName: userName,
      firstName: firstName,
      lastName: lastName,
      profilePictureRelativeUrl: profilePicture.replaceAll(
        Constants.imagesBaseUrl,
        '',
      ),
      role: role == Role.admin ? 'ADMIN' : 'MEMBER',
    );
  }
}
