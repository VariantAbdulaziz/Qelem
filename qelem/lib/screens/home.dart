import 'package:flutter/material.dart';
import 'package:qelem/common/app_palette.dart';
import 'package:qelem/common/constants.dart';
import 'package:qelem/widgets/home_app_bar.dart';
import 'package:qelem/widgets/common_app_bar.dart';

import '../domain/models/question_model.dart';
import '../widgets/question_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String _title = Constants.home;
  AppBar _appBar = homeAppBar(Constants.home);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, position) {
          return QuestionCard(QuestionModel(
              "What is the best way to manage state in flutter",
              "Emre Varol",
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
              "assets/images/default_profile_picture.jpeg"));
        },
      ),
      bottomNavigationBar: bottomNav(),
    );
  }

  Widget bottomNav() {
    return BottomNavigationBar(
      backgroundColor: AppPalette.qelemPurple,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: Constants.home,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          label: Constants.myQuestions,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: Constants.profile,
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onTap,
    );
  }

  void _onTap(int index) {
    _selectedIndex = index;
    switch (index) {
      case 0:
        {
          _title = Constants.home;
          _appBar = homeAppBar(_title);
        }
        break;
      case 1:
        {
          _title = Constants.myQuestions;
          _appBar = commonAppBar(_title);
        }
        break;
      case 2:
        {
          _title = Constants.profile;
          _appBar = commonAppBar(_title);
        }
        break;
    }
    setState(() {});
  }
}