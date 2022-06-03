import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:qelem/infrastructure/auth/user_dto.dart';
import 'package:qelem/infrastructure/common/time_stamp_converter.dart';

part 'answer_dto.freezed.dart';
part 'answer_dto.g.dart';

@freezed
class AnswerDto with _$AnswerDto {
  const factory AnswerDto({
    required int id,
    required String content,
    required int questionId,
    required UserDto author,
    required int upVotes,
    required int downVotes,
    required int userVote,
    @TimestampConverter() required DateTime createdAt,
    @TimestampConverter() required DateTime updatedAt,
  }) = _AnswerDto;

  factory AnswerDto.fromJson(Map<String, dynamic> json) =>
      _$AnswerDtoFromJson(json);
}
