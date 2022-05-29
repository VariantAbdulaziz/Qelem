import 'dart:convert';
import 'dart:io';

import 'package:qelem/data/remote/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


// a function that retrievs access token form shared preferences
getAccessToken() async {
  var sharedPreferences = await SharedPreferences.getInstance();
  String accessToken = sharedPreferences.getString("access_token") ?? "";
  return accessToken;
}