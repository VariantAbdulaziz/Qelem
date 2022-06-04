import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_question_event.freezed.dart';

@freezed
class SearchQuestionEvent with _$SearchQuestionEvent {
  const SearchQuestionEvent._();

  const factory SearchQuestionEvent.search(String query) =
      SearchQuestionEventSearch;
}
