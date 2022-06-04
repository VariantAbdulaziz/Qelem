import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/question/question_form.dart';

part 'question_construction_event.freezed.dart';

@freezed
abstract class QuestionConstructionEvent with _$QuestionConstructionEvent {
  // const factory QuestionConstructionEvent.empty() =
  //     QuestionConstructionEmptyEvent;
  // const factory QuestionConstructionEvent.update(int questionId) =
  //     QuestionConstructionUpdateEvent;
  const QuestionConstructionEvent._();

  const factory QuestionConstructionEvent.postQuestion(QuestionForm form) = QuestionEventPost;
}
