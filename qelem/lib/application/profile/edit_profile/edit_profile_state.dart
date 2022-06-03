import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/profile/profile.dart';
import 'package:qelem/util/error.dart';

part 'edit_profile_state.freezed.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial() = EditProfileStateInitial;

  // Loading
  const factory EditProfileState.loading() = EditProfileStateLoading;
  const factory EditProfileState.updating() = EditProfileStateUpdating;

  // Success
  const factory EditProfileState.loaded(Profile profile) =
      EditProfileStateLoaded;
  const factory EditProfileState.success(Profile profile) =
      EditProfileStateSuccess;

  // Error states
  const factory EditProfileState.updateFailure(Error error) =
      EditProfileStateUpdateFailure;
  const factory EditProfileState.loadingFailure(Error error) =
      EditProfileStateLoadingFailure;
}
