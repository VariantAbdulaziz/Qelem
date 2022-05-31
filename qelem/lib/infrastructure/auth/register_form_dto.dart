import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'register_form_dto.freezed.dart';
part 'register_form_dto.g.dart';

@freezed
class RegisterFormDto with _$RegisterFormDto {
  factory RegisterFormDto({
    required String username,
    required String password,
    required String firstName,
    required String lastName,
  }) = _RegisterFormDto;

  factory RegisterFormDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterFormDtoFromJson(json);
}
