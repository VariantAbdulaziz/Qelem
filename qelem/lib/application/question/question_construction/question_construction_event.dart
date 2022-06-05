import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/question/question_form.dart';
import 'package:qelem/domain/tag/tag.dart';

part 'question_construction_event.freezed.dart';

@freezed
abstract class QuestionConstructionEvent with _$QuestionConstructionEvent {
  // const factory QuestionConstructionEvent.empty() =
  //     QuestionConstructionEmptyEvent;
  // const factory QuestionConstructionEvent.update(int questionId) =
  //     QuestionConstructionUpdateEvent;
  const QuestionConstructionEvent._();

  const factory QuestionConstructionEvent.loadTags() =
      QuestionConstructionLoadTagsEvent;

  const factory QuestionConstructionEvent.postQuestion(QuestionForm form) =
      QuestionEventPost;
  const factory QuestionConstructionEvent.toggleTag(Tag tag) =
      QuestionEventToggleTag;
}
