import 'package:qelem/domain/answer/answer_form.dart';
import 'package:qelem/infrastructure/answer/answer_form_dto.dart';

extension AnswerFormMapper on AnswerForm {
  AnswerFormDto toDto() {
    return AnswerFormDto(
      questionId: questionId,
      content: content,
    );
  }
}
