import 'dart:convert';
import 'dart:io';

import 'package:qelem/domain/profile/edit_profile_form.dart';
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'package:qelem/infrastructure/profile/profile_dto.dart';
import 'package:qelem/util/my_http_client.dart';

class ProfileApi {
  final MyHttpClient _httpClient;

  ProfileApi(this._httpClient);

  Future<ProfileDto> updateProfile(
      {required EditProfileForm profileForm}) async {
    var response = await _httpClient.multiPartRequest("profile", "PATCH",
        body: profileForm.toJson(),
        files: {
          if (profileForm.profilePicture != null)
            "profilePicture": profileForm.profilePicture!
        });

    if (response.statusCode == 200) {
      var responseBody = await response.stream.bytesToString();
      return ProfileDto.fromJson(json.decode(responseBody));
    } else {
      throw QHttpException(
          json.decode(await response.stream.bytesToString())['message'] ??
              "Unknown error",
          response.statusCode);
    }
  }

  Future<ProfileDto> getProfile() async {
    var response = await _httpClient.get("profile");

    if (response.statusCode == 200) {
      return ProfileDto.fromJson(json.decode(response.body));
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<void> deleteAccount() async {
    var response = await _httpClient.delete("profile");

    if (response.statusCode != 204) {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }
}
