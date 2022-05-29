import 'dart:convert';
import 'dart:io';

import 'package:qelem/data/remote/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';



// get the user profile from the server
Future<UserModel> getProfile(String url, String token) async {

  HttpClient client = HttpClient();
  
  HttpClientRequest request = await client.getUrl(Uri.parse(url));

  request.headers.add(HttpHeaders.authorizationHeader, "Bearer " + token);
  
  HttpClientResponse response = await request.close();

  if (response.statusCode == 200) {

    String responseBody = await response.transform(utf8.decoder).join();
    return UserModel.fromJson(json.decode(responseBody));

  } else {

    throw Exception('Failed to load profile!');
  }

}


// a function that retrievs access token form shared preferences
getAccessToken() async {
  var sharedPreferences = await SharedPreferences.getInstance();
  String accessToken = sharedPreferences.getString("access_token") ?? "";
  return accessToken;
}