// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangePasswordFormDto _$$_ChangePasswordFormDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ChangePasswordFormDto(
      username: json['username'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$$_ChangePasswordFormDtoToJson(
        _$_ChangePasswordFormDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
