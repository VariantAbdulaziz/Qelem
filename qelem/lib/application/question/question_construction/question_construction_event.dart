import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_construction_event.freezed.dart';

@freezed
abstract class QuestionConstructionEvent with _$QuestionConstructionEvent {
  const factory QuestionConstructionEvent.empty() =
      QuestionConstructionEmptyEvent;
  const factory QuestionConstructionEvent.update(int questionId) =
      QuestionConstructionUpdateEvent;
}
