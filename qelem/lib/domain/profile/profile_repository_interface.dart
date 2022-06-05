import 'package:qelem/domain/profile/edit_profile_form.dart';
import 'package:qelem/domain/profile/profile.dart';
import 'package:qelem/util/either.dart';

abstract class ProfileRepositoryInterface {
  Future<Either<Profile>> updateProfile({required EditProfileForm profileForm});

  Future<Either<Profile>> getProfile();

  Future<Either<void>> deleteAccount();
}
