import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/application/change_password/change_password_bloc.dart';
import 'package:qelem/application/change_password/change_password_event.dart';
import 'package:qelem/application/change_password/change_password_state.dart';
import 'package:qelem/common/constants.dart';
import 'package:qelem/domain/auth/change_password_form.dart';
import 'package:qelem/domain/auth/password.dart';
import 'package:qelem/presentation/routes/routes.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool currentHidden = true;
  bool newHidden = true;
  bool confirmHidden = true;
  bool _isNetworkInProgress = false;
  final _formKey = GlobalKey<FormState>();

  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyMedium;
    return BlocProvider(
      create: (context) => ChangePasswordBloc(RepositoryProvider.of(context)),
      child: BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
        listener: (context, state) {
          if (state is ChangePasswordStateLoading) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Changing password...")));
            setState(() {
              _isNetworkInProgress = true;
            });
          } else {
            setState(() {
              _isNetworkInProgress = false;
            });
          }
          if (state is ChangePasswordStateSuccess) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Password changed'),
                backgroundColor: Colors.green,
              ),
            );
          }
          if (state is ChangePasswordStateFailure) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error.message),
                backgroundColor: Theme.of(context).errorColor,
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(Constants.changePassword),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          child: TextFormField(
                            style: textStyle,
                            obscureText: currentHidden,
                            controller: currentPasswordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your current password';
                              }
                            },
                            decoration: InputDecoration(
                                labelText: 'Current Password',
                                suffixIcon: IconButton(
                                    icon: Icon(currentHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        currentHidden = !currentHidden;
                                      });
                                    }),
                                border: const OutlineInputBorder()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          child: TextFormField(
                            style: textStyle,
                            obscureText: newHidden,
                            controller: newPasswordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your new password';
                              }
                            },
                            decoration: InputDecoration(
                                labelText: 'New Password',
                                suffixIcon: IconButton(
                                    icon: Icon(newHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        newHidden = !newHidden;
                                      });
                                    }),
                                border: const OutlineInputBorder()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          child: TextFormField(
                            style: textStyle,
                            obscureText: confirmHidden,
                            controller: confirmPasswordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please confirm your current password';
                              } else if (value != newPasswordController.text) {
                                return 'Passwords don\'t match';
                              }
                            },
                            decoration: InputDecoration(
                                labelText: 'New Password (again)',
                                suffixIcon: IconButton(
                                    icon: Icon(confirmHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        confirmHidden = !confirmHidden;
                                      });
                                    }),
                                border: const OutlineInputBorder()),
                          ),
                        ),
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.only(right: 15.0, top: 15.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                          child: Text(
                            'UPDATE',
                            style: Theme.of(context).primaryTextTheme.button,
                          ),
                          onPressed: _isNetworkInProgress
                              ? null
                              : () async {
                                  if (_formKey.currentState!.validate()) {
                                    var passwordForm = ChangePasswordForm(
                                      currentPassword: Password(
                                          currentPasswordController.text),
                                      newPassword:
                                          Password(newPasswordController.text),
                                    );

                                    BlocProvider.of<ChangePasswordBloc>(context)
                                        .add(ChangePasswordEventChangePassword(
                                            passwordForm));
                                  }
                                }),
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
