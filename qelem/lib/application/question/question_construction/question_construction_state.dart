import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/question/question.dart';
import '../../../util/error.dart';

part 'question_construction_state.freezed.dart';

@freezed
abstract class QuestionConstructionState with _$QuestionConstructionState {
  const factory QuestionConstructionState.empty() = QuestionConstructionEmpty;
  const factory QuestionConstructionState.error(Error error) = QuestionStateError;
  const factory QuestionConstructionState.loading() = QuestionStateLoading;
  const factory QuestionConstructionState.success(Question question) = QuestionStateSuccess;
}
