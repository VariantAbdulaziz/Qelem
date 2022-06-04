import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/question/question.dart';

import '../../../util/error.dart';

part 'question_detail_state.freezed.dart';

@freezed
class QuestionDetailState with _$QuestionDetailState {
  const factory QuestionDetailState.initial() = QuestionDetailStateInitial;

  // Initial loading state.
  const factory QuestionDetailState.loading() = QuestionDetailStateLoading;
  const factory QuestionDetailState.loadedQuestion(Question question) =
      QuestionDetailStateLoadedQuestion;

  const factory QuestionDetailState.error(Error error) =
      QuestionDetailStateError;

  // Delete
  const factory QuestionDetailState.deleteSuccess() =
      QuestionDetailStateDeleteSuccess;
}
