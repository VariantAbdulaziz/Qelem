import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/domain/question/question.dart';

part 'question_detail_event.freezed.dart';

@freezed
abstract class QuestionDetailEvent with _$QuestionDetailEvent {
  const factory QuestionDetailEvent.load(int questionId) =
      QuestionDetailLoadEvent;

  const factory QuestionDetailEvent.reload(int questionId) =
      QuestionDetailReloadEvent;

  const factory QuestionDetailEvent.delete(int questionId) =
      QuestionDetailDeleteEvent;
  const factory QuestionDetailEvent.vote(Question question, Vote vote) =
      VoteQuestionEvent;
}
