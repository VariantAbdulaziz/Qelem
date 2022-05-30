import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qelem/common/constants.dart';
import 'package:qelem/data/remote/models/user_model.dart';
import 'package:http/http.dart' as http;

import '../common/util/json_to_form_data_converter.dart';



// get the user profile from the server
class ProfileNetworkService {
  Future<UserModel> getProfile(String url, String token) async {
    HttpClient client = HttpClient();
    HttpClientRequest request = await client.getUrl(
        Uri.parse(Constants.BASE_URL + url));

    request.headers.add(HttpHeaders.authorizationHeader, "Bearer " + token);

    HttpClientResponse response = await request.close();

    if (response.statusCode == 200) {
      String responseBody = await response.transform(utf8.decoder).join();
      return UserModel.fromJson(json.decode(responseBody));

    } else {

      throw Exception('Failed to load profile!');
    }

  }


  // update the user profile on the server from the user model object passed
  Future<UserModel> updateProfile(String url, String token, Map<String, dynamic> dataToBeChanged, File? profilePicture) async {

    var request = http.MultipartRequest("PATCH", Uri.parse(Constants.BASE_URL + url));
    request.headers.addAll({"Authorization": "Bearer " + token});

    if (profilePicture != null) {
      request.files.add(await http.MultipartFile.fromPath('profile', profilePicture.path));
    }

    request = jsonToFormData(request, dataToBeChanged);

    var response = await request.send();

    if (response.statusCode == 200) {

      var responseBody = await response.stream.bytesToString();

      return UserModel.fromJson(json.decode(responseBody));

    } else {

      throw Exception('Failed to update profile!');
    }

  }


  // change password 
  Future<UserModel> changePassword(String url, String token, String oldPassword, String newPassword) async {
    HttpClient client = HttpClient();

    HttpClientRequest request = await client.patchUrl(
        Uri.parse(Constants.BASE_URL + url));

    request.headers.add(HttpHeaders.authorizationHeader, "Bearer " + token);

    request.headers.add('content-type', 'application/json');
    request.add(utf8.encode(json.encode({
      "oldPassword": oldPassword,
      "newPassword": newPassword
    })));

    HttpClientResponse response = await request.close();
    if (response.statusCode == 200) {
    
      String responseBody = await response.transform(utf8.decoder).join();
      return UserModel.fromJson(json.decode(responseBody));
    
    } else {
      throw Exception('Failed to change password!');
    }

  }
}