import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/profile/edit_profile/edit_profile_bloc.dart';
import 'package:qelem/infrastructure/profile/profile_repository.dart';
import 'package:qelem/presentation/pages/my_profile/my_profile_edit/edit_profile_screen.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          EditProfileBloc(RepositoryProvider.of<ProfileRepository>(context)),
      child: EditProfileScreen(),
    );
  }
}
