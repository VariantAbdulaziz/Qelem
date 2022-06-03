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
        profilePicture: profilePicture);
  }
}

extension ProfileDtoMapper on Profile {
  ProfileDto toProfileDto() {
    return ProfileDto(
        id: id,
        username: userName,
        firstName: firstName,
        lastName: lastName,
        role: role,
        profilePicture: profilePicture);
  }
}
