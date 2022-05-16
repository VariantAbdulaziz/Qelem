import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qelem/common/Constants.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool currentHidden = true;
  bool newHidden = true;
  bool confirmHidden = true;

  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.subtitle1;
    return Scaffold(
      appBar: AppBar(
          title: const Text(Constants.changePassword),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
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
                  labelStyle: GoogleFonts.comfortaa(textStyle: textStyle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
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
                      icon: Icon(
                          newHidden ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          newHidden = !newHidden;
                        });
                      }),
                  labelStyle: GoogleFonts.comfortaa(textStyle: textStyle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
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
                  labelStyle: GoogleFonts.comfortaa(textStyle: textStyle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(right: 15.0, top: 15.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 115.0,
                  height: 45.0,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'UPDATE',
                      style: GoogleFonts.comfortaa(
                          color: Colors.white,
                          textStyle: textStyle,
                          fontSize: 16,
                          letterSpacing: 2),
                    ),
                    color: const Color.fromRGBO(98, 0, 238, 1),
                    onPressed: () async {},
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
