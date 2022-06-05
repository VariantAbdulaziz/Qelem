import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/profile/profile.dart';

part 'profile_entity.freezed.dart';

part 'profile_entity.g.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required int id,
    required String profileName,
    required String firstName,
    required String lastName,
    required String profilePicture,
    required String role,
  }) = _ProfileEntity;

  factory ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntityFromJson(json);
}

extension ProfileEntityX on ProfileEntity {
  Profile toProfile() {
    return Profile(
      id: id,
      userName: profileName,
      firstName: firstName,
      lastName: lastName,
      profilePictureUrl: profilePicture,
      role: role,
    );
  }
}
