import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/question/question.dart';

part 'question_detail_event.freezed.dart';

@freezed
abstract class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.load(int questionId) = QuestionLoadEvent;
  const factory QuestionEvent.delete(int questionId) = QuestionDeleteEvent;
  const factory QuestionEvent.upVote(Question question) = QuestionUpVoteEvent;
  const factory QuestionEvent.downVote(Question question) =
      QuestionDownVoteEvent;
}
