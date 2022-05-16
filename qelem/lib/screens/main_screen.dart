import 'package:flutter/material.dart';
import 'package:qelem/common/app_palette.dart';
import 'package:qelem/common/constants.dart';
import 'package:qelem/screens/home_screen.dart';
import 'package:qelem/screens/my_questions_screen.dart';
import 'package:qelem/widgets/ProfileAppBar.dart';
import 'package:qelem/widgets/home_app_bar.dart';
import 'package:qelem/widgets/common_app_bar.dart';


class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen();
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  String _title = Constants.home;
  AppBar _appBar = homeAppBar(Constants.home);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          MyQuestionsScreen(),
          Container()
          // Nazrawi needs to add his screen here too.
        ],
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
          _appBar = profileAppBar(_title);
        }
        break;
    }
    setState(() {});
  }
}
