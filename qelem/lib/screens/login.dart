import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:qelem/screens/registerUser.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
  bool _isObscure = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.subtitle1;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 10.0,
              ),
              Text(
                "Sign In",
                style:
                    GoogleFonts.comfortaa(textStyle: textStyle, fontSize: 35),
              ),
            ],
          ),
          Row(children: [
            const SizedBox(
              width: 10.0,
            ),
            Text(
              "Do you have an account?",
              style: GoogleFonts.comfortaa(textStyle: textStyle),
            ),
            TextButton(
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                    color: Color.fromRGBO(98, 0, 238, 1),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const registerUser()));
                }),
          ]),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: TextFormField(
              style: textStyle,
              controller: usernameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'please enter your username';
                }
              },
              decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter Your username',
                  labelStyle: GoogleFonts.comfortaa(textStyle: textStyle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: TextFormField(
              style: textStyle,
              obscureText: _isObscure,
              controller: passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'please enter your password';
                }
              },
              decoration: InputDecoration(
                  labelText: 'password',
                  hintText: 'Enter your password',
                  suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
                  labelStyle: GoogleFonts.comfortaa(textStyle: textStyle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
          ),
          Row(
            children: [
              Checkbox(
                  value: isChecked,
                  activeColor: const Color.fromRGBO(98, 0, 238, 1),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  }),
              Text(
                "Remember Me",
                style: GoogleFonts.comfortaa(
                  textStyle: textStyle,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            width: 370.0,
            child: FloatingActionButton.extended(
              heroTag: "btn1",
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              label: const Text("SIGN IN"),
              backgroundColor: const Color.fromRGBO(98, 0, 238, 1),
              onPressed: () {
                String username = usernameController.text;
                String password = passwordController.text;
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final List<Widget> actions;

  MyAlertDialog({
    required this.title,
    required this.content,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        this.title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      actions: this.actions,
      content: Text(
        this.content,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
