import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/question/questions_list/questions_list_bloc.dart';
import 'package:qelem/application/question/questions_list/questions_list_event.dart';
import 'package:qelem/infrastructure/question/question_repository.dart';
import 'package:qelem/presentation/pages/question/my_questions_page/my_questions_screen.dart';

class MyQuestionsPage extends StatelessWidget {
  const MyQuestionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionsListBloc(
          questionRepository:
              RepositoryProvider.of<QuestionRepository>(context))
        ..add(const QuestionsListEventLoad()),
      child: const MyQuestionsScreen(),
    );
  }
}
