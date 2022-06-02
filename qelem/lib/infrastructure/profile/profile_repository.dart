import 'dart:io';

import 'package:qelem/domain/profile/profile.dart';
import 'package:qelem/infrastructure/profile/profile_api.dart';
import 'package:qelem/infrastructure/profile/profile_dto.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';
import 'package:qelem/infrastructure/profile/profile_model_mapper.dart';
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';

class ProfileRepository {
  final ProfileApi profileApi;

  ProfileRepository(this.profileApi);

  Future<Either<Profile>> updateProfile(
      {required Profile profile, File? profilePicture}) async {
    try {
      ProfileDto profileDto = await profileApi.updateProfile(
          profileDto: profile.toProfileDto(), profilePicture: profilePicture);
      return Either(val: profileDto.toProfile());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    }
  }

  Future<Either<Profile>> getProfile() async {
    try {
      ProfileDto profileDto = await profileApi.getProfile();
      return Either(val: profileDto.toProfile());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    }
  }
}
