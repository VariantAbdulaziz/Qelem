import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/auth/auth_bloc.dart';
import 'package:qelem/application/auth/auth_event.dart';
import 'package:qelem/application/profile/profile_overview/profile_bloc.dart';
import 'package:qelem/application/profile/profile_overview/profile_event.dart';

class DeleteAccountDialog extends StatelessWidget {
  final ProfileBloc profileBloc;

  const DeleteAccountDialog({Key? key, required this.profileBloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Delete account'),
      content: SingleChildScrollView(
        child: ListBody(
          children: const <Widget>[
            Text(
                'Deleting account is permanent and cannot be undone. Are you sure you want to delete your account?'),
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
          child: const Text('Delete', style: TextStyle(color: Colors.red)),
          onPressed: () {
            profileBloc.add(const ProfileEventDeleteAccount());
          },
        ),
      ],
    );
  }
}
