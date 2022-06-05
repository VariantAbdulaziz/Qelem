import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/application/profile/edit_profile/edit_profile_state.dart';
import 'package:qelem/domain/profile/profile.dart';
import 'package:qelem/presentation/pages/my_profile/my_profile_edit/edit_profile_screen.dart';
import 'package:qelem/application/profile/edit_profile/edit_profile_bloc.dart';
import 'package:qelem/util/error.dart';

import 'edit_profile_screen_test.mocks.dart';

@GenerateMocks([EditProfileBloc, Profile])
void main() {
  late MockEditProfileBloc mockEditProfileBloc;
  late MockProfile mockProfile;

  setUp(() {
    mockEditProfileBloc = MockEditProfileBloc();
    mockProfile = MockProfile();
  });
  testWidgets('Edit Profile screen test', (WidgetTester tester) async {
    when(mockEditProfileBloc.state).thenReturn(EditProfileState.initial());
    when(mockEditProfileBloc.stream).thenAnswer((_) => Stream.fromIterable(
          [
            EditProfileState.loading(),
            EditProfileState.updating(),
            EditProfileState.updateFailure(Error('error')),
            EditProfileState.success(mockProfile),
            EditProfileState.updateFailure(Error('error')),
            EditProfileState.loadingFailure(Error('error')),
          ],
        ));

    await tester.pumpWidget(
      BlocProvider<EditProfileBloc>(
        create: (c) => mockEditProfileBloc,
        child: MaterialApp(home: EditProfileScreen()),
      ),
    );
  });
}
