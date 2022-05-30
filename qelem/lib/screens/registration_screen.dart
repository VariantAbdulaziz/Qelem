import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/data/remote/models/user_model.dart';
import 'package:qelem/domain/repository/auth_repository.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _isObscure = true;

  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late UserModel user;

  final AuthRepository _authRepo = AuthRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
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
                  if (value!.isEmpty) {
                    return 'Please enter your first name';
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
                  if (value!.isEmpty) {
                    return 'please enter your name';
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
                  if (value!.isEmpty) {
                    return 'please enter your name';
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
                obscureText: _isObscure,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 90.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  onPressed: () {},
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
    );
  }
}
