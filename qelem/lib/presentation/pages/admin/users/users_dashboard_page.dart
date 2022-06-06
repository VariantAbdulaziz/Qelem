import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/users/users_bloc.dart';
import 'package:qelem/application/users/users_event.dart';
import 'package:qelem/application/users/users_state.dart';
import 'package:qelem/domain/users/users_repository_interface.dart';
import 'package:qelem/presentation/pages/admin/users/users_dashboard_screen.dart';

class UsersDashboardPage extends StatefulWidget {
  const UsersDashboardPage({Key? key}) : super(key: key);

  @override
  State<UsersDashboardPage> createState() => _UsersDashboardPageState();
}

class _UsersDashboardPageState extends State<UsersDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersBloc(UnUsersState(),
          RepositoryProvider.of<UsersRepositoryInterface>(context))
        ..add(LoadUsersUsersEvent()),
      child: const UsersDashboardScreen(),
    );
  }
}
