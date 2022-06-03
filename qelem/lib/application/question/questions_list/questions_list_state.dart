import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/question/question.dart';
import '../../../util/error.dart';

part 'questions_list_state.freezed.dart';

@freezed
abstract class QuestionsListState with _$QuestionsListState {
  const factory QuestionsListState.success(List<Question> question) = _Success;
  const factory QuestionsListState.error(Error error) = _Error;
  const factory QuestionsListState.loading() = _Loading;
  const factory QuestionsListState.empty() = _Empty;
}
