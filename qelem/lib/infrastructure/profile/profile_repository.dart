import 'dart:io';

import 'package:qelem/domain/profile/edit_profile_form.dart';
import 'package:qelem/domain/profile/profile.dart';
import 'package:qelem/infrastructure/profile/profile_api.dart';
import 'package:qelem/infrastructure/profile/profile_dto.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';
import 'package:qelem/infrastructure/profile/profile_model_mapper.dart';
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'dart:developer' as developer;

class ProfileRepository {
  final ProfileApi profileApi;

  ProfileRepository(this.profileApi);

  Future<Either<Profile>> updateProfile(
      {required EditProfileForm profileForm}) async {
    try {
      ProfileDto profileDto =
          await profileApi.updateProfile(profileForm: profileForm);
      return Either(val: profileDto.toProfile());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while updating profile in Profile Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  Future<Either<Profile>> getProfile() async {
    try {
      ProfileDto profileDto = await profileApi.getProfile();
      return Either(val: profileDto.toProfile());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while getting profile in Profile Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }
}
