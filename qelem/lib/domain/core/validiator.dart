import 'package:qelem/domain/auth/password.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

Either<String>? validateEmail(String email) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (!RegExp(emailRegex).hasMatch(email)) {
    return Either(error: Error("Invalid Email"));
  }
  if (email.isEmpty) {
    return Either(error: Error("please enter your email"));
  } else {
    return null;
  }
}

Either<String>? validateUserName(String userName) {
  if (userName.isEmpty) {
    print("\n\n\n\n\n\n\n\n\nahfajdh23456789fjaf\n\n\n\n");
    return Either(error: Error("please enter your username"));
  }
  if (userName.length < 8) {
    print("\n\n\n\n\n\n\n\n\nahfajdhfjaf\n\n\n\n");
    return Either(error: Error("Username must be aleast 8 charachters long"));
  } else {
    print("i returned null");
    return null;
  }
}

Either<String>? validatePassword(String password) {
  const PasswordRegex =
      r"""^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$""";

  if (password.length < 8) {
    print("\n\n\n\n\n\n\n\n\nahfajdhfjaf\n\n\n\n");
    return Either(error: Error("Password must be aleast 8 charachters long"));
  }
  if (!RegExp(PasswordRegex).hasMatch(password)) {
    return Either(
        error: Error(
            "Password must contain one uppercase and one lowercase letter, \n a number and a special characte "));
  }
  if (password.isEmpty) {
    return Either(error: Error("please enter your password"));
  } else {
    return null;
  }
}
