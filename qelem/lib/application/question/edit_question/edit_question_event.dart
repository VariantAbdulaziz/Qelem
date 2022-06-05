import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/question/question_form.dart';

part 'edit_question_event.freezed.dart';

@freezed
class EditQuestionEvent with _$EditQuestionEvent {
  const EditQuestionEvent._();

  const factory EditQuestionEvent.changePassword(
      QuestionForm questionForm, int questionId) = EditQuestionEventEdit;
}
