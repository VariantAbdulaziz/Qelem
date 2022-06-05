import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/tag/tag.dart';

part 'question_form.freezed.dart';

@freezed
class QuestionForm with _$QuestionForm {
  const factory QuestionForm({
    required String topic,
    required String content,
    required List<Tag> tags,
  }) = _QuestionForm;
}
