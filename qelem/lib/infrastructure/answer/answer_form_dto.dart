import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'answer_form_dto.freezed.dart';
part 'answer_form_dto.g.dart';

@freezed
class AnswerFormDto with _$AnswerFormDto {
  const factory AnswerFormDto({
    required int questionId,
    required String content,
  }) = _AnswerFormDto;

  factory AnswerFormDto.fromJson(Map<String, dynamic> json) =>
      _$AnswerFormDtoFromJson(json);
}
