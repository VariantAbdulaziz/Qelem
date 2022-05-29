import 'dart:convert';

UserModel userModelJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel userModel) => json.encode(userModel.toJson());

class UserModel {
  String userName;
  String password;
  String firstName;
  String lastName;
  String role;
  String profilePicture;

  UserModel(
      {required this.userName,
      required this.firstName,
      required this.lastName,
      required this.password,
      this.role = "MEMBER",
      required this.profilePicture});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      firstName: json["firstName"],
      lastName: json["lastName"],
      userName: json["username"],
      password: json["password"],
      role: json["role"],
      profilePicture: json["profilePicture"]);

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "username": userName,
        "password": password,
      };

  String get firstname => firstName;
  String get lastname => lastName;
}
