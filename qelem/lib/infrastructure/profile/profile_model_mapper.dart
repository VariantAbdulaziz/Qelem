import 'package:qelem/common/constants.dart';
import 'package:qelem/domain/profile/profile.dart';
import 'package:qelem/infrastructure/profile/profile_dto.dart';

extension ProfileMapper on ProfileDto {
  Profile toProfile() {
    return Profile(
      id: id,
      userName: username,
      firstName: firstName,
      lastName: lastName,
      role: role,
      profilePictureUrl: Constants.imagesBaseUrl + profilePictureRelativeUrl,
    );
  }
}
