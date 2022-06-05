import 'package:qelem/domain/question/question_form.dart';
import 'package:qelem/infrastructure/question/question_form_dto.dart';

extension QuestionFormMapper on QuestionForm {
  QuestionFormDto toDto() {
    return QuestionFormDto(
      topic: topic,
      content: content,
      tagIds: tags.map((tag) => tag.id).toList(),
    );
  }
}
