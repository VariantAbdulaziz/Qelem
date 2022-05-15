import 'package:flutter/material.dart';
import 'package:qelem/screens/Home.dart';
import 'common/Constants.dart';
import 'common/QelemTheme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.home,
      theme: QelemTheme.qelemTheme,
      home: const Home(),
    );
  }
}