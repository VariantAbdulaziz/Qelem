import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/domain/answer/answer_form.dart';
import 'package:qelem/domain/common/vote.dart';

part 'answer_event.freezed.dart';

@freezed
class AnswerEvent with _$AnswerEvent {
  const factory AnswerEvent.loadAnswers(int questionId) =
      LoadAnswersAnswerEvent;
  const factory AnswerEvent.reloadAnswers(int questionId) =
      ReloadAnswersAnswerEvent;
  const factory AnswerEvent.addAnswer(AnswerForm answerForm) = AddAnswerEvent;
  const factory AnswerEvent.updateAnswer(Answer answer) = UpdateAnswerEvent;
  const factory AnswerEvent.delete(Answer answer) = DeleteAnswerEvent;
  const factory AnswerEvent.vote(Answer answer, Vote vote) = VoteAnswerEvent;
}
