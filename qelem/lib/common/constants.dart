import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

class Constants {
  static const home = "Home";
  static const myQuestions = "My Questions";
  static const profile = "Profile";
  static const create = "Create";
  static const editProfile = "Edit Profile";
  static const changePassword = "Change Password";

  static String imagesBaseUrl = !kIsWeb && Platform.isAndroid
      ? "http://10.0.2.2:8080"
      : "http://localhost:8080";
  static String baseUrl = !kIsWeb && Platform.isAndroid
      ? "http://10.0.2.2:8080/api/v1/"
      : "http://localhost:8080/api/v1/";
}
