import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/question/question.dart';
import '../../../util/error.dart';

part 'question_construction_state.freezed.dart';

@freezed
abstract class QuestionConstructionState with _$QuestionConstructionState {
  const factory QuestionConstructionState.empty() = _QuestionConstructionEmpty;
  const factory QuestionConstructionState.error(Error error) = _Error;
  const factory QuestionConstructionState.loading() = _Loading;
  const factory QuestionConstructionState.update(Question question) = _Updated;
}
