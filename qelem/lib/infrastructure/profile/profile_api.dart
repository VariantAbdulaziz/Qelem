import 'dart:convert';
import 'dart:io';

import 'package:qelem/infrastructure/profile/profile_dto.dart';
import 'package:qelem/util/my_http_client.dart';

class ProfileApi {
  final MyHttpClient _httpClient;

  ProfileApi(this._httpClient);

  Future<ProfileDto> updateProfile(
      {required ProfileDto profileDto, File? profilePicture}) async {
    final files = {
      if (profilePicture != null) 'profilePicture': profilePicture,
    };

    var response = await _httpClient.multiPartRequest("profile", "PATCH",
        body: profileDto.toJson(), files: files);

    if (response.statusCode == 200) {
      var responseBody = await response.stream.bytesToString();
      return ProfileDto.fromJson(json.decode(responseBody));
    } else {
      throw Exception('Failed to update profile!');
    }
  }

  Future<ProfileDto> getProfile() async {
    var response = await _httpClient.get("profile");

    if (response.statusCode == 200) {
      return ProfileDto.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load profile!');
    }
  }
}
