import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/question/question.dart';
import '../../../util/error.dart';

part 'question_detail_state.freezed.dart';

@freezed
abstract class QuestionState with _$QuestionState {
  const factory QuestionState.loading() = _QuestionLoading;
  const factory QuestionState.rollBack() = _QuestionRollBack;
  const factory QuestionState.error(Error error) = _QuestionError;
  const factory QuestionState.loaded(Question question) = _QuestionFetched;
}
