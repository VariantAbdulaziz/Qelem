import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/util/error.dart';

part 'change_password_state.freezed.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = ChangePasswordStateInitial;
  const factory ChangePasswordState.loading() = ChangePasswordStateLoading;
  const factory ChangePasswordState.success() = ChangePasswordStateSuccess;
  const factory ChangePasswordState.failure(Error error) =
      ChangePasswordStateFailure;
}
