import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/util/error.dart';

part 'edit_question_state.freezed.dart';

@freezed
class EditQuestionState with _$EditQuestionState {
  const factory EditQuestionState.initial() = EditQuestionStateInitial;
  const factory EditQuestionState.loading() = EditQuestionStateLoading;
  const factory EditQuestionState.success() = EditQuestionStateSuccess;
  const factory EditQuestionState.failure(Error error) =
      EditQuestionStateFailure;
}
