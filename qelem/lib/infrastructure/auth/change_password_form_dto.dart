import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'change_password_form_dto.freezed.dart';
part 'change_password_form_dto.g.dart';

@freezed
class ChangePasswordFormDto with _$ChangePasswordFormDto {
  factory ChangePasswordFormDto({
    required String username,
    required String password,
    required String firstName,
    required String lastName,
  }) = _ChangePasswordFormDto;

  factory ChangePasswordFormDto.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordFormDtoFromJson(json);
}
