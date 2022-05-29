import 'package:flutter/material.dart';
import 'package:qelem/screens/main_screen.dart';
import 'common/constants.dart';
import 'common/qelem_theme.dart';
import 'package:go_router/go_router.dart';
import 'screens/screens.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: '/change-password',
        builder: (context, state) => const ChangePasswordScreen(),
      ),
      GoRoute(
        path: '/edit-profile',
        builder: (context, state) => const EditProfileScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegistrationScreen(),
      ),
      GoRoute(
        path: '/sign-in',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/post-question',
        builder: (context, state) => const PostQuestionScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: Constants.home,
      theme: QelemTheme.qelemTheme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
