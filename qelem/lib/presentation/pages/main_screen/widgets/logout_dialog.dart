import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/auth/auth_bloc.dart';
import 'package:qelem/application/auth/auth_event.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Logout'),
      content: SingleChildScrollView(
        child: ListBody(
          children: const <Widget>[
            Text('Would you like to logout?'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel', style: TextStyle(color: Colors.black)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Logout'),
          onPressed: () {
            BlocProvider.of<AuthBloc>(context).add(const AuthEventSignOut());
          },
        ),
      ],
    );
  }
}
