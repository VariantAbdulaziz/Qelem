import 'package:flutter/material.dart';
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
                  border: const OutlineInputBorder()),
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
                  border: const OutlineInputBorder()),
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
                  border: const OutlineInputBorder()),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(right: 15.0, top: 15.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  child: Text(
                    'UPDATE',
                    style: Theme.of(context).primaryTextTheme.button,
                  ),
                  onPressed: () async {},
                ),
              ))
        ],
      ),
    );
  }
}
