import 'package:flutter/material.dart';
import 'package:qelem/common/AppPalette.dart';
import 'package:qelem/common/Constants.dart';
import 'package:qelem/widgets/HomeAppBar.dart';
import 'package:qelem/widgets/CommonAppBar.dart';

import '../domain/models/QuestionModel.dart';
import '../widgets/QuestionCard.dart';

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
        // controller: _controller,
        itemCount: 20,
        itemBuilder: (context, position) {
          // These is a testing data to be removed once you
          // guys review my request. Remind me to remove it.
          return QuestionCard(QuestionModel(
              "What is the best way to manage state in flutter",
              "Emre Varol",
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
              "assets/images/1.png"));
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
