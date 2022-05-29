import 'dart:convert';

UserModel userModelJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel userModel) => json.encode(userModel.toJson());

class UserModel {
  String username;
  String password;
  String firstName;
  String lastName;
  String role;
  String profilePhoto;

  UserModel(
      { this.username = "",
       this.firstName = "",
       this.lastName = "",
       this.password = "",
      this.role = "MEMBER",
       this.profilePhoto = ""});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      firstName: json["firstName"],
      lastName: json["lastName"],
      username: json["username"],
      password: json["password"],
      role: json["role"],
      profilePhoto: json["profilePicture"]
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "username": username,
        "password": password,
      };

  String get firstname => firstName;
  String get lastname => lastName;
}
