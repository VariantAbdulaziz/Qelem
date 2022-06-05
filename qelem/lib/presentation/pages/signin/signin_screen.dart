import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/application/auth/auth_bloc.dart';
import 'package:qelem/application/auth/auth_event.dart';
import 'package:qelem/application/login/login_bloc.dart';
import 'package:qelem/application/login/login_event.dart';
import 'package:qelem/application/login/login_state.dart';
import 'package:qelem/domain/auth/login_form.dart';
import 'package:qelem/domain/auth/password.dart';
import 'package:qelem/domain/auth/username.dart';
import 'package:qelem/presentation/routes/routes.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool isChecked = false;
  bool _isPasswordHidden = true;
  bool _isNetworkInProgress = false;
  final _formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(RepositoryProvider.of(context)),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginStateLoading) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Logging in...')),
            );
            setState(() {
              _isNetworkInProgress = true;
            });
          } else {
            setState(() {
              _isNetworkInProgress = false;
            });
          }

          if (state is LoginStateSuccess) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            // Notify auth bloc that user has logged in
            BlocProvider.of<AuthBloc>(context)
                .add(AuthEventSignedIn(state.user, state.token));
            context.go(Routes.home);
          }

          if (state is LoginStateFailure) {
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
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign In",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Row(children: [
                        Text(
                          "Do you have an account?",
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        TextButton(
                          child: const Text("SIGN UP"),
                          onPressed: () => context.go('/register'),
                        ),
                      ]),
                      const SizedBox(height: 30.0),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: usernameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your username';
                                }
                                if (value.length < 8) {
                                  return 'Username must be at least 8 characters';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                labelText: 'Username',
                                hintText: 'Enter Your username',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            TextFormField(
                              obscureText: _isPasswordHidden,
                              controller: passwordController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                if (value.length < 8) {
                                  return 'Password must be at least 8 characters';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  hintText: 'Enter your password',
                                  suffixIcon: IconButton(
                                      icon: Icon(_isPasswordHidden
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          _isPasswordHidden =
                                              !_isPasswordHidden;
                                        });
                                      }),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 22.0),
                      Row(
                        children: [
                          Checkbox(
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                          Text(
                            "Remember Me",
                            style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      ElevatedButton(
                        onPressed: _isNetworkInProgress
                            ? null
                            : () {
                                if (_formKey.currentState!.validate()) {
                                  var form = LoginForm(
                                    userName: UserName(usernameController.text),
                                    password: Password(passwordController.text),
                                  );

                                  BlocProvider.of<LoginBloc>(context).add(
                                    LoginEventLogin(form),
                                  );
                                }
                              },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50), // NEW
                        ),
                        child: Text(
                          "SIGN IN",
                          style: Theme.of(context).primaryTextTheme.button,
                        ),
                      ),
                    ],
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
