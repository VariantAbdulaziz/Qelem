import 'dart:core';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_arc_speed_dial/flutter_speed_dial_menu_button.dart';
import 'package:flutter_arc_speed_dial/main_menu_floating_action_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:qelem/domain/models/UserModel.dart';
import 'package:qelem/screens/login.dart';

class registerUser extends StatefulWidget {
  const registerUser({Key? key}) : super(key: key);

  @override
  State<registerUser> createState() => _registerUserState();
}

registerUsers(String firstName, String lastName, String username,
    String password, File? file, BuildContext context) async {
  var url = "http://127.0.0.1adb reverse tcp:8000 tcp:8000:8080/api/v1/users";
  // var response = await http.post(Uri.parse(url),
  //     headers: headers,
  //     body: jsonEncode(<String, String>{
  //       "firstName": firstName,
  //       "lastName": lastName,
  //       "username": username,
  //       "password": password,
  //     }));
  // String responseString = response.body;
  // if (response.statusCode == 200) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext dialogContext) {
  //       return MyAlertDialog(title: 'Backend Response', content: response.body);
  //     },
  //   );
  final tempUser = {
    "firstName": firstName,
    "lastName": lastName,
    "username": username,
    "password": password,
  };

  final parsedUri = Uri.http("127.0.0.1:8080", "/api/v1/users", tempUser);
  var request = http.MultipartRequest('POST', parsedUri);
  request = jsonToFormData(request, tempUser);
  request.headers;
  if (file != null) {
    request.files
        .add(await http.MultipartFile.fromPath("multipartFile", file.path));
  }
  final response = await request.send();
  final responseData = await response.stream.toBytes();
  final responseString = String.fromCharCodes(responseData);
  if (response.statusCode == 201) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Login()));
  } else {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return MyAlertDialog(
            title: 'Backend Response', content: responseString);
      },
    );
  }
}

jsonToFormData(http.MultipartRequest request, Map<String, dynamic> data) {
  for (var key in data.keys) {
    request.fields[key] = data[key].toString();
  }
  return request;
}

class _registerUserState extends State<registerUser> {
  bool _isObscure = true;
  final minimumPadding = 10.0;
  final ImagePicker _imagePicker = ImagePicker();
  File? file;
  Future getImage(ImageSource imageSource) async {
    var source = imageSource == ImageSource.camera
        ? ImageSource.camera
        : ImageSource.gallery;
    var pickedFile = await _imagePicker.pickImage(
        source: source,
        preferredCameraDevice: CameraDevice.front,
        imageQuality: 100);
    setState(() {
      file = File(pickedFile!.path);
    });
  }

  // final path = image.path;
  // final bytes = await File(path).readAsBytes();
  // final img.Image image = img.decodeImage(bytes);

  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late UserModel user;

  @override
  Widget build(BuildContext context) {
    final TextStyle headline4 = Theme.of(context).textTheme.headline4!;
    TextStyle? textStyle = Theme.of(context).textTheme.subtitle2;
    return Scaffold(
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(minimumPadding * 2),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40.0,
                      ),
                      Stack(children: [
                        Center(
                          child: CircleAvatar(
                            backgroundImage: file != null
                                ? FileImage(file!) as ImageProvider
                                : const AssetImage("assets/abebe.jpeg"),
                            radius: 100,
                          ),
                        ),
                        Positioned(
                          right: 70.0,
                          top: -100.0,
                          width: 200.0,
                          height: 300.0,
                          child: SpeedDialMenuButton(
                            mainMenuFloatingActionButton:
                                MainMenuFloatingActionButton(
                              isExtended: true,
                              mini: false,
                              backgroundColor: Color.fromRGBO(98, 0, 238, 1),
                              child: const Icon(Icons.camera),
                              onPressed: () {},
                              closeMenuChild: const Icon(Icons.close),
                              closeMenuForegroundColor: Colors.white,
                              closeMenuBackgroundColor:
                                  Color.fromRGBO(98, 0, 238, 1),
                            ),
                            floatingActionButtonWidgetChildren: [
                              FloatingActionButton.extended(
                                  icon: const Icon(Icons.camera),
                                  label: const Text("Camera"),
                                  backgroundColor:
                                      Color.fromRGBO(98, 0, 238, 1),
                                  onPressed: () =>
                                      {getImage(ImageSource.camera)}),
                              FloatingActionButton.extended(
                                  icon: const Icon(Icons.browse_gallery),
                                  label: const Text("Galley"),
                                  backgroundColor:
                                      Color.fromRGBO(98, 0, 238, 1),
                                  onPressed: () =>
                                      {getImage(ImageSource.gallery)})
                            ],
                            isMainFABMini: false,
                            isSpeedDialFABsMini: false,
                          ),
                        )
                      ]),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text(
                  "Create Your Account",
                  style: GoogleFonts.comfortaa(textStyle: headline4),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: minimumPadding, bottom: minimumPadding),
                  child: TextFormField(
                    style: textStyle,
                    controller: firstController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your name';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'First Name',
                        hintText: 'Enter Your First Name',
                        labelStyle: GoogleFonts.comfortaa(textStyle: textStyle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: minimumPadding, bottom: minimumPadding),
                  child: TextFormField(
                    style: textStyle,
                    controller: lastController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your name';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Last Name',
                        hintText: 'Enter Your First Name',
                        labelStyle: GoogleFonts.comfortaa(textStyle: textStyle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: minimumPadding, bottom: minimumPadding),
                  child: TextFormField(
                    style: textStyle,
                    controller: usernameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your name';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'username',
                        hintText: 'Enter a username',
                        labelStyle: GoogleFonts.comfortaa(textStyle: textStyle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: minimumPadding, bottom: minimumPadding),
                  child: TextFormField(
                    style: textStyle,
                    controller: passwordController,
                    obscureText: _isObscure,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your name';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'password',
                        hintText: 'Enter a password',
                        suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            }),
                        labelStyle: GoogleFonts.comfortaa(textStyle: textStyle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              const SizedBox(
                height: 60.0,
              ),
              FloatingActionButton.extended(
                  heroTag: "reg_btn",
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  label: const Text('SIGN UP'),
                  backgroundColor: Color.fromRGBO(98, 0, 238, 1),
                  onPressed: () async {
                    String firstName = firstController.text;
                    String lastName = lastController.text;
                    String username = usernameController.text;
                    String password = passwordController.text;
                    UserModel users = await registerUsers(
                        firstName, lastName, username, password, file, context);
                    firstController.text = '';
                    lastController.text = '';
                    usernameController.text = '';
                    passwordController.text = '';
                    setState(() {
                      user = users;
                    });
                  }),
              const SizedBox(
                height: 2.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do you already have an account?",
                    style: GoogleFonts.comfortaa(textStyle: textStyle),
                  ),
                  TextButton(
                      child: const Text(
                        "SIGN IN",
                      ),
                      style: TextButton.styleFrom(
                        primary: Color.fromRGBO(98, 0, 238, 1),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      })
                ],
              ),

              // FloatingActionButton.extended(
              //     heroTag: "login_btn",
              //     label: const Text('Login'),
              //     onPressed: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => const Login()));
              //     })
            ],
          ),
        ),
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
