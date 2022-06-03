import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/profile/edit_profile_form.dart';

part 'edit_profile_event.freezed.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const EditProfileEvent._();

  const factory EditProfileEvent.editprofile(EditProfileForm form) =
      EditProfileEventUpdate;
}
