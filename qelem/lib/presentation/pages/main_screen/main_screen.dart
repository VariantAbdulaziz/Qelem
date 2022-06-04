import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/common/app_palette.dart';
import 'package:qelem/common/constants.dart';
import 'package:qelem/presentation/pages/home_screen/home_screen.dart';
import 'package:qelem/presentation/pages/main_screen/widgets/logout_dialog.dart';
import 'package:qelem/presentation/pages/my_profile/my_profile_overview/my_profile_page.dart';
import 'package:qelem/presentation/pages/question/my_questions_page/my_questions_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          homeScreen(),
          const MyQuestionsScreen(),
          const MyProfilePage()
        ],
      ),
      bottomNavigationBar: bottomNav(),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        onPressed: () => context.push('/post-question'),
        label: const Text("Ask"),
        backgroundColor: const Color(0xFF03DAC5),
        foregroundColor: Colors.black,
      ),
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
    setState(() {
      _selectedIndex = index;
    });
  }

  AppBar _getAppBar() {
    switch (_selectedIndex) {
      case 0:
        {
          return AppBar(
            title: const Text("Home"),
            actions: [
              IconButton(onPressed: () => {}, icon: const Icon(Icons.search))
            ],
          );
        }
      case 1:
        {
          return AppBar(title: const Text("My Questions"));
        }
      case 2:
        {
          return AppBar(
            title: const Text("Profile"),
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => const LogoutDialog());
                  },
                  icon: const Icon(Icons.logout))
            ],
          );
        }
    }
    throw Exception("Invalid index");
  }
}
