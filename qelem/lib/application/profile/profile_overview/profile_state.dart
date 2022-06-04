import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/profile/profile.dart';
import 'package:qelem/util/error.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileStateInitial;

  // Loading
  const factory ProfileState.loading() = ProfileStateLoading;

  // Success
  const factory ProfileState.loaded(Profile profile) = ProfileStateLoaded;

  const factory ProfileState.failure(Error error) = ProfileStateFailure;

  // Delete account
  const factory ProfileState.accountDeleted() =
      ProfileStateDeleteAccountSuccess;
  const factory ProfileState.deleteAccountLoading() =
      ProfileStateDeleteAccountLoading;
  const factory ProfileState.deleteAccountFailure(Error error) =
      ProfileStateDeleteAccountFailure;
}
