import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:qelem/infrastructure/auth/user_dto.dart';
import 'package:qelem/infrastructure/common/time_stamp_converter.dart';
import 'package:qelem/infrastructure/tag/tag_dto.dart';

part 'question_dto.freezed.dart';
part 'question_dto.g.dart';

@freezed
class QuestionDto with _$QuestionDto {
  const factory QuestionDto({
    required int id,
    required String topic,
    required String content,
    required UserDto author,
    @TimestampConverter() required DateTime createdAt,
    @TimestampConverter() required DateTime updatedAt,
    required int upVotes,
    required int downVotes,
    required int userVote,
    @JsonKey(name: 'tags') required List<TagDto> tags,
  }) = _QuestionDto;

  factory QuestionDto.fromJson(Map<String, dynamic> json) =>
      _$QuestionDtoFromJson(json);
}
