import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/application/registration/registration_bloc.dart';
import 'package:qelem/application/registration/registration_event.dart';
import 'package:qelem/application/registration/registration_state.dart';
import 'package:qelem/domain/auth/auth_repository_interface.dart';
import 'package:qelem/domain/auth/password.dart';
import 'package:qelem/domain/auth/registration_form.dart';
import 'package:qelem/domain/auth/username.dart';
import 'package:qelem/domain/core/validiator.dart';
import 'package:qelem/infrastructure/auth/auth_repository.dart';
import 'package:qelem/presentation/routes/routes.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _isPasswordHidden = true;
  bool _isNetworkInProgress = false;
  final _formKey = GlobalKey<FormState>();

  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationBloc(
          RepositoryProvider.of<AuthRepositoryInterface>(context)),
      child: BlocConsumer<RegistrationBloc, RegistrationState>(
        listener: (context, state) {
          if (state is RegistrationStateLoading) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Registering...')),
            );
            setState(() {
              _isNetworkInProgress = true;
            });
          } else {
            setState(() {
              _isNetworkInProgress = false;
            });
          }

          if (state is RegistrationStateSuccess) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Registration successful'),
                backgroundColor: Colors.green,
              ),
            );
            context.go(Routes.signIn);
          }

          if (state is RegistrationStateFailure) {
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
            body: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height),
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Create Your Account",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              "Do you already have an account?",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            TextButton(
                              child: const Text("SIGN IN"),
                              onPressed: () => context.go('/sign-in'),
                            )
                          ],
                        ),
                        const SizedBox(height: 30.0),
                        TextFormField(
                          controller: firstController,
                          validator: (value) {
                            if (validateNotEmpty(value!, "first name") !=
                                null) {
                              return validateNotEmpty(value, "first name")!
                                  .error!
                                  .message;
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                            labelText: 'First Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        TextFormField(
                          controller: lastController,
                          validator: (value) {
                            if (validateNotEmpty(value!, "last name") != null) {
                              return validateNotEmpty(value, "last name")!
                                  .error!
                                  .message;
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                            labelText: 'Last Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        TextFormField(
                          controller: usernameController,
                          validator: (value) {
                            if (validateUserName(value!) != null) {
                              return validateUserName(value)!.error!.message;
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                            labelText: 'User Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        TextFormField(
                          controller: passwordController,
                          obscureText: _isPasswordHidden,
                          validator: (value) {
                            if (validatePassword(value!) != null) {
                              return validatePassword(value)!.error!.message;
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                                icon: Icon(_isPasswordHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isPasswordHidden = !_isPasswordHidden;
                                  });
                                }),
                            border: const OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 90.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ElevatedButton(
                            onPressed: _isNetworkInProgress
                                ? null
                                : () {
                                    if (_formKey.currentState!.validate()) {
                                      var form = RegistrationForm(
                                          userName:
                                              UserName(usernameController.text),
                                          password:
                                              Password(passwordController.text),
                                          firstName: firstController.text,
                                          lastName: lastController.text);

                                      BlocProvider.of<RegistrationBloc>(context)
                                          .add(
                                        RegistrationEventRegister(form),
                                      );
                                    }
                                  },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(50), // NEW
                            ),
                            child: Text(
                              "SIGN UP",
                              style: Theme.of(context).primaryTextTheme.button,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
