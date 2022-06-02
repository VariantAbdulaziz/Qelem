import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_form.freezed.dart';

@freezed
class AnswerForm with _$AnswerForm {
  const factory AnswerForm({
    required int questionId,
    required String content,
  }) = _AnswerForm;

  factory AnswerForm.fromJson(Map<String, dynamic> json) =>
      _$AnswerFormFromJson(json);
}
