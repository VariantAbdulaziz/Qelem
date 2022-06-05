import 'package:freezed_annotation/freezed_annotation.dart';

part 'questions_list_event.freezed.dart';

@freezed
class QuestionsListEvent with _$QuestionsListEvent {
  const factory QuestionsListEvent.inital() = QuestionsListEventInitial;

  const factory QuestionsListEvent.load() = QuestionsListEventLoad;
  const factory QuestionsListEvent.refresh() = QuestionsListEventRefresh;

  const factory QuestionsListEvent.loadAll() = QuestionsListEventLoadAll;
  const factory QuestionsListEvent.refreshAll() = QuestionsListEventRefreshAll;
}
