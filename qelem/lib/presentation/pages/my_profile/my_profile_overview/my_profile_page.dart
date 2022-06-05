import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/profile/profile_overview/profile_bloc.dart';
import 'package:qelem/domain/profile/profile_repository_interface.dart';

import 'my_profile_screen.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ProfileBloc(
            RepositoryProvider.of<ProfileRepositoryInterface>(context)),
        child: const MyProfileScreen());
  }
}
