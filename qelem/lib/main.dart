import 'package:flutter/material.dart';
import 'package:qelem/common/Constants.dart';
import 'package:qelem/screens/Home.dart';
import 'common/qelem_theme.dart';

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
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
