import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/domain/profile/edit_profile_form.dart';
import 'package:qelem/domain/profile/profile.dart';
import 'package:qelem/domain/profile/profile_repository_interface.dart';
import 'package:qelem/util/either.dart';

import 'profile_repo_test.mocks.dart';

@GenerateMocks([ProfileRepositoryInterface])
void main() {
  late MockProfileRepositoryInterface mockProfileRepository;
  late Profile mockProfile;

  setUp(() {
    mockProfileRepository = MockProfileRepositoryInterface();
    mockProfile = Profile(
        id: 1,
        userName: 'userName',
        firstName: 'firstName',
        lastName: 'lastName',
        role: 'role',
        profilePictureUrl: 'profilePictureUrl');
  });

  group('Profile repo tests', () {
    test('test get profile', () async {
      when(mockProfileRepository.getProfile())
          .thenAnswer((_) async => Either(val: mockProfile));

      final result = await mockProfileRepository.getProfile();

      expect(result, isA<Either<Profile>>());
      expect(result.val, mockProfile);
    });

    test('test update profile', () async {
      final editProfileForm = EditProfileForm(
          firstName: 'firstName',
          lastName: 'lastName',
          profilePicture: File('path'));

      when(mockProfileRepository.updateProfile(profileForm: editProfileForm))
          .thenAnswer((_) async => Either(val: mockProfile));

      final result = await mockProfileRepository.updateProfile(
          profileForm: editProfileForm);

      expect(result, isA<Either<Profile>>());
      expect(result.val, mockProfile);
    });

    test('test delete account', () async {
      when(mockProfileRepository.deleteAccount())
          .thenAnswer((realInvocation) async => Either(val: null));

      final result = await mockProfileRepository.deleteAccount();

      expect(result, isA<Either<void>>());
    });
  });
}
