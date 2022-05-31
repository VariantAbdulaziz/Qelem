class User {
  int id;
  String userName;
  String firstName;
  String lastName;
  String role;
  String profilePicture;

  User({
    required this.id,
    required this.userName,
    required this.firstName,
    required this.lastName,
    this.role = "MEMBER",
    required this.profilePicture,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        userName: json["userName"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        role: json["role"],
        profilePicture: json["profilePhoto"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userName": userName,
        "firstName": firstName,
        "lastName": lastName,
        "role": role,
        "profilePhoto": profilePicture,
      };
}
