import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/users/users_bloc.dart';
import 'package:qelem/application/users/users_event.dart';
import 'package:qelem/application/users/users_state.dart';
import 'package:qelem/domain/auth/user_role.dart';

class UsersDashboardScreen extends StatefulWidget {
  const UsersDashboardScreen({Key? key}) : super(key: key);

  @override
  State<UsersDashboardScreen> createState() => _UsersDashboardScreenState();
}

class _UsersDashboardScreenState extends State<UsersDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UsersBloc, UsersState>(
      listener: (context, state) {
        if (state is ErrorUsersState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is ErrorUsersState) {
          return Center(
            child: Text(state.errorMessage),
          );
        }
        if (state is LoadingUsersState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is InUsersState) {
          return DataTable(
            columnSpacing: 5,
            columns: const <DataColumn>[
              DataColumn(label: SizedBox()),
              DataColumn(
                label: Text(
                  'User Name',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Role',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(label: Text("isAdmin")),
            ],
            rows: <DataRow>[
              for (final user in state.users)
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(user.profilePicture),
                      ),
                    ),
                    DataCell(
                      Text(user.userName),
                    ),
                    DataCell(
                      Text(user.role.toString()),
                    ),
                    DataCell(
                      Center(
                        child: Icon(user.role == Role.admin
                            ? Icons.check_box
                            : Icons.check_box_outline_blank),
                      ),
                      onTap: () {
                        BlocProvider.of<UsersBloc>(context).add(
                          SetUserRoleUsersEvent(
                            user.role == Role.admin ? Role.member : Role.admin,
                            user,
                          ),
                        );
                      },
                    ),
                  ],
                ),
            ],
          );
        }

        return const Center(
          child: Text('Unknown state'),
        );
      },
    );
  }
}
