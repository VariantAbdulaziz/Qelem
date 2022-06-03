import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/question/question.dart';

part 'questions_list_event.freezed.dart';

@freezed
abstract class QuestionsListEvent with _$QuestionsListEvent {
  const factory QuestionsListEvent.request(
    List<Question> questions,
    double offset,
  ) = QuestionsListRequestEvent;
}
