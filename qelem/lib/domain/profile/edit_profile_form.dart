import 'dart:io';

class EditProfileForm {
  final String firstName;
  final String lastName;
  final File? profilePicture;

  EditProfileForm({
    required this.firstName,
    required this.lastName,
    required this.profilePicture,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
    };
  }
}
