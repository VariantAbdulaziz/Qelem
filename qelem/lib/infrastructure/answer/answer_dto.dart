import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:qelem/infrastructure/auth/user_dto.dart';

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
    required String createdAt,
    required String updatedAt,
  }) = _AnswerDto;

  factory AnswerDto.fromJson(Map<String, dynamic> json) =>
      _$AnswerDtoFromJson(json);
}
