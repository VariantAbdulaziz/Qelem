import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
class ProfileDto with _$ProfileDto {
  const factory ProfileDto({
    required int id,
    required String username,
    required String firstName,
    required String lastName,
    required String role,
    @JsonKey(name: 'profilePicture') required String profilePictureRelativeUrl,
  }) = _ProfileDto;

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
}
