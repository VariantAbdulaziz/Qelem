import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/util/error.dart';

part 'answer_state.freezed.dart';

@freezed
class AnswerState with _$AnswerState {
  const factory AnswerState.initial() = AnswerStateInitial;
  const factory AnswerState.loading() = AnswerStateLoading;
  const factory AnswerState.loadedAnswers(List<Answer> answers) =
      AnswerStateLoadedAnswers;

  const factory AnswerState.error(Error error) = AnswerStateError;
  const factory AnswerState.success(String message) = AnswerStateSuccess;
}
