// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileEntity _$$_ProfileEntityFromJson(Map<String, dynamic> json) =>
    _$_ProfileEntity(
      id: json['id'] as int,
      profileName: json['profileName'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      profilePicture: json['profilePicture'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$_ProfileEntityToJson(_$_ProfileEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profileName': instance.profileName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'profilePicture': instance.profilePicture,
      'role': instance.role,
    };
