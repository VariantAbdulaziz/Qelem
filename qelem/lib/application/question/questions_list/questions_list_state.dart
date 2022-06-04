import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/question/question.dart';
import '../../../util/error.dart';

part 'questions_list_state.freezed.dart';

@freezed
class QuestionsListState with _$QuestionsListState {
  const factory QuestionsListState.initial() = QuestionsListStateInitial;
  const factory QuestionsListState.error(Error error) = QuestionsListStateError;
  const factory QuestionsListState.loading() = QuestionsListStateLoading;
  const factory QuestionsListState.success(List<Question> questions) =
      QuestionsListStateSuccess;
}
