import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/auth/user.dart';

part 'login_response.freezed.dart';

@freezed
class LoginReponse with _$LoginReponse {
  const factory LoginReponse({
    required User user,
    required String jwt,
  }) = _LoginReponse;
}
