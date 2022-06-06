import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/profile/edit_profile/edit_profile_event.dart';
import 'package:qelem/application/profile/edit_profile/edit_profile_state.dart';
import 'package:qelem/domain/profile/profile_repository_interface.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final ProfileRepositoryInterface _profileRepository;

  EditProfileBloc(this._profileRepository)
      : super(const EditProfileState.initial()) {
    // Load profile on init
    () async {
      emit(const EditProfileStateLoading());

      final profile = await _profileRepository.getProfile();

      if (profile.hasError) {
        emit(EditProfileStateLoadingFailure(profile.error!));
      }

      emit(EditProfileStateLoaded(profile.val!));
    }();

    on<EditProfileEventUpdate>(
      ((event, emit) async {
        emit(const EditProfileStateUpdating());

        var result =
            await _profileRepository.updateProfile(profileForm: event.form);

        if (result.hasError) {
          emit(EditProfileStateUpdateFailure(result.error!));
        } else {
          emit(EditProfileStateSuccess(result.val!));
        }
      }),
    );
  }
}
