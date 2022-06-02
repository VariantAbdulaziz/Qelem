import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/application/auth/auth_bloc.dart';
import 'package:qelem/application/auth/auth_state.dart';
import 'package:qelem/presentation/pages/boarding/register_login_screen.dart';
import 'package:qelem/presentation/routes/routes.dart';

import '../common/constants.dart';
import '../common/qelem_theme.dart';
import 'pages/change_password_form/change_password_screen.dart';
import 'pages/my_profile/my_profile_edit/edit_profile_screen.dart';
import 'pages/question/question_edit_form/edit_question_screen.dart';
import 'pages/signin/signin_screen.dart';
import 'pages/main_screen/main_screen.dart';
import 'pages/question/question_post_form/post_question_screen.dart';
import 'pages/question/question_detail/question_detail_screen.dart';
import 'pages/register/registration_screen.dart';

class App extends StatelessWidget {
  final AuthBloc authBloc;
  late final GoRouter _router;

  App({Key? key, required this.authBloc}) : super(key: key) {
    _router = GoRouter(
      refreshListenable: GoRouterRefreshStream(authBloc.stream),
      redirect: (state) {
        // First Run
        if (authBloc.state is AppInitialized &&
            state.location != Routes.boarding &&
            state.location != Routes.signIn &&
            state.location != Routes.register) {
          if ((authBloc.state as AppInitialized).isFirstRun) {
            return Routes.boarding;
          }
        }

        // App initialized with no token
        if (authBloc.state is AppInitialized &&
            state.location != Routes.boarding &&
            state.location != Routes.signIn &&
            state.location != Routes.register) {
          if ((authBloc.state as AppInitialized).token == null) {
            return Routes.signIn;
          }
        }
        return null;
      },
      routes: [
        GoRoute(
          path: Routes.home,
          builder: (context, state) => const MainScreen(),
        ),
        GoRoute(
            path: Routes.boarding,
            builder: (context, state) => const RegisterLoginScreen()),
        GoRoute(
          path: Routes.changePassword,
          builder: (context, state) => const ChangePasswordScreen(),
        ),
        GoRoute(
          path: Routes.editProfile,
          builder: (context, state) => const EditProfileScreen(),
        ),
        GoRoute(
          path: Routes.register,
          builder: (context, state) => const RegistrationScreen(),
        ),
        GoRoute(
          path: Routes.signIn,
          builder: (context, state) => const SigninScreen(),
        ),
        GoRoute(
          path: Routes.postQuestion,
          builder: (context, state) => const PostQuestionScreen(),
        ),
        GoRoute(
          path: '${Routes.editQuestion}/:qid',
          builder: (context, state) {
            final qid = int.parse(state.params['qid']!);
            return EditQuestionScreen(qid: qid);
          },
        ),
        GoRoute(
          path: '${Routes.questionDetail}/:qid',
          builder: (context, state) {
            final qid = int.parse(state.params['qid']!);
            return QuestionDetailScreen(qid: qid);
          },
        ),
      ],
    );
  }

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
