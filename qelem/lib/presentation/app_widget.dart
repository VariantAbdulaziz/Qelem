import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/application/question/questions_list/questions_list_bloc.dart';

import '../common/constants.dart';
import '../common/qelem_theme.dart';
import '../infrastructure/question/question_api.dart';
import '../infrastructure/question/question_repository.dart';
import '../util/my_http_client.dart';
import 'pages/change_password_form/change_password_screen.dart';
import 'pages/main_screen/main_screen.dart';
import 'pages/my_profile/my_profile_edit/edit_profile_screen.dart';
import 'pages/question/question_detail/question_detail_screen.dart';
import 'pages/question/question_edit_form/edit_question_screen.dart';
import 'pages/question/question_post_form/post_question_screen.dart';
import 'pages/register/registration_screen.dart';

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
      // GoRoute(
      //   path: '/sign-in',
      //   builder: (context, state) => const LoginScreen(),
      // ),
      GoRoute(
        path: '/post-question',
        builder: (context, state) => const PostQuestionScreen(),
      ),
      GoRoute(
        path: '/edit-question/:qid',
        builder: (context, state) {
          final qid = int.parse(state.params['qid']!);
          return EditQuestionScreen(qid: qid);
        },
      ),
      GoRoute(
        path: '/question-detail/:qid',
        builder: (context, state) {
          final qid = int.parse(state.params['qid']!);
          return QuestionDetailScreen(qid: qid);
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
