import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/question/question.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';
import 'package:qelem/util/error.dart';

part 'search_queation_state.freezed.dart';

@freezed
class SearchQuestionState with _$SearchQuestionState {
  const factory SearchQuestionState.initial() = SearchQuestionStateInitial;
  const factory SearchQuestionState.loading() = SearchQuestionStateLoading;
  const factory SearchQuestionState.loaded(List<Question> questons) =
      SearchQuestionStateLoaded;
  const factory SearchQuestionState.failure(Error error) =
      SearchQuestionStateFailure;
}
