import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/domain/repository/auth_repository.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  bool _isObscure = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final AuthRepository _authRepo = AuthRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            TextFormField(
              controller: usernameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your username';
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
              obscureText: _isObscure,
              controller: passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
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
              onPressed: () {
                _authRepo.login(
                    username: usernameController.text,
                    password: passwordController.text);
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
    );
  }
}
