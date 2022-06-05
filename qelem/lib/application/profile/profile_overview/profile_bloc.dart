import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/profile/profile_overview/profile_event.dart';
import 'package:qelem/application/profile/profile_overview/profile_state.dart';
import 'package:qelem/infrastructure/profile/profile_repository.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;

  ProfileBloc(this._profileRepository) : super(const ProfileState.initial()) {
    // Load profile on init
    () async {
      emit(const ProfileStateInitial());

      final profile = await _profileRepository.getProfile();

      if (profile.hasError) {
        emit(ProfileStateFailure(profile.error!));
      }

      emit(ProfileStateLoaded(profile.val!));
    }();

    on<ProfileEventDeleteAccount>((event, emit) async {
      emit(const ProfileStateDeleteAccountLoading());

      final profile = await _profileRepository.deleteAccount();

      if (profile.hasError) {
        emit(ProfileStateDeleteAccountFailure(profile.error!));
      }

      emit(const ProfileStateDeleteAccountSuccess());
    });
  }
}
