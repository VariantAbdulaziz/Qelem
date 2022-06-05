import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

Either<String>? validateNotEmpty(String input, String name) {
  if (input.isEmpty) {
    return Either(error: Error("please enter your $name"));
  }
  return null;
}

Either<String>? validateStringLength(String input, String name, int length) {
  if (input.length < 8) {
    return Either(
        error: Error("$name must be aleast $length charachters long"));
  }
  return null;
}

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
    return Either(error: Error("please enter your username"));
  }
  if (userName.length < 8) {
    return Either(error: Error("Username must be aleast 8 charachters long"));
  } else {
    print("i returned null");
    return null;
  }
}

Either<String>? validatePassword(String password) {
  const passwordRegex =
      r"""^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$""";

  if (password.length < 8) {
    return Either(error: Error("Password must be aleast 8 charachters long"));
  }
  if (!RegExp(passwordRegex).hasMatch(password)) {
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

Either<String>? validateConfirmPassword(
    String newPassword, String oldPassword) {
  if (newPassword != oldPassword) {
    return Either(error: Error("Passwords don\'t match"));
  } else {
    return null;
  }
}
