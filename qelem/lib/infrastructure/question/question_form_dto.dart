import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'question_form_dto.freezed.dart';
part 'question_form_dto.g.dart';

@freezed
class QuestionFormDto with _$QuestionFormDto {
  const factory QuestionFormDto(
      {required String topic, required String content}) = _QuestionFormDto;

  factory QuestionFormDto.fromJson(Map<String, dynamic> json) =>
      _$QuestionFormDtoFromJson(json);
}
