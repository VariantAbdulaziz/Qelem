import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/common/app_palette.dart';
import 'package:qelem/common/constants.dart';
import 'package:qelem/domain/auth/auth_repository_interface.dart';
import 'package:qelem/domain/auth/user_role.dart';
import 'package:qelem/presentation/pages/admin/admin_dashboard/admin_dashboard_page.dart';
import 'package:qelem/presentation/pages/home_screen/home_screen.dart';
import 'package:qelem/presentation/pages/main_screen/widgets/logout_dialog.dart';
import 'package:qelem/presentation/pages/my_profile/my_profile_overview/my_profile_page.dart';
import 'package:qelem/presentation/pages/question/my_questions_page/my_questions_page.dart';
import 'package:qelem/presentation/routes/routes.dart';

class MainScreen extends StatefulWidget {
  final int? index;

  const MainScreen({Key? key, this.index}) : super(key: key);

  @override
  _MainScreenState createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex =
        (widget.index != null && widget.index! < 4) ? widget.index! : 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          const HomeScreen(),
          const MyQuestionsPage(),
          const MyProfilePage(),
          if (RepositoryProvider.of<AuthRepositoryInterface>(context)
                  .getAuthenticatedUserSync()!
                  .role ==
              Role.admin)
            const AdminDashBoardPage(),
        ],
      ),
      bottomNavigationBar: bottomNav(),
      floatingActionButton: _selectedIndex == 3
          ? null
          : FloatingActionButton.extended(
              icon: const Icon(Icons.add),
              onPressed: () => context.push(Routes.postQuestion),
              label: const Text("Ask"),
              backgroundColor: const Color(0xFF03DAC5),
              foregroundColor: Colors.black,
            ),
    );
  }

  Widget bottomNav() {
    return BottomNavigationBar(
      backgroundColor: AppPalette.qelemPurple,
      type: BottomNavigationBarType.fixed,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: Constants.home,
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.help),
          label: Constants.myQuestions,
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: Constants.profile,
        ),
        if (RepositoryProvider.of<AuthRepositoryInterface>(context)
                .getAuthenticatedUserSync()!
                .role ==
            Role.admin)
          const BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard",
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

  AppBar? _getAppBar() {
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
          return AppBar(
            title: const Text("My Questions"),
          );
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
      case 3:
        {
          return null;
        }
    }
    throw Exception("Invalid index");
  }
}
