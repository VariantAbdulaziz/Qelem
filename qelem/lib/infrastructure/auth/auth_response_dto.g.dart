// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthResponseDto _$$_AuthResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_AuthResponseDto(
      jwt: json['jwt'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthResponseDtoToJson(_$_AuthResponseDto instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'user': instance.user,
    };
