import 'dart:convert';

UserModel userModelJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel userModel) => json.encode(userModel.toJson());

class UserModel {
  String userName;
  String password;
  String firstName;
  String lastName;
  String role;
  String profilePhoto;

  UserModel(
      {required this.userName,
      required this.firstName,
      required this.lastName,
      required this.password,
      this.role = "MEMBER",
      this.profilePhoto = ""});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      firstName: json["firstName"],
      lastName: json["lastName"],
      userName: json["userName"],
      password: json["password"],
      role: json["role"],
      profilePhoto: json["profilePhoto"]);

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "userName": userName,
        "password": password,
      };

  String get firstname => firstName;
  String get lastname => lastName;
}
