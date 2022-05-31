// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDto _$$_ProfileDtoFromJson(Map<String, dynamic> json) =>
    _$_ProfileDto(
      id: json['id'] as int,
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      role: json['role'] as String,
      profilePicture: json['profilePicture'] as String,
    );

Map<String, dynamic> _$$_ProfileDtoToJson(_$_ProfileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'role': instance.role,
      'profilePicture': instance.profilePicture,
    };
