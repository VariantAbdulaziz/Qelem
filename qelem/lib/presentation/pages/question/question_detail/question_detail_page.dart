import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/answer/answer_bloc.dart';
import 'package:qelem/application/answer/answer_event.dart';
import 'package:qelem/application/question/question_detail/question_detail_bloc.dart';
import 'package:qelem/application/question/question_detail/question_detail_event.dart';
import 'package:qelem/domain/answer/answer_repository_interface.dart';
import 'package:qelem/domain/auth/auth_repository_interface.dart';
import 'package:qelem/domain/question/question_repository_interface.dart';
import 'package:qelem/infrastructure/auth/auth_repository.dart';
import 'package:qelem/presentation/pages/question/question_detail/question_detail_screen.dart';

class QuestionDetailPage extends StatelessWidget {
  final int questionId;

  const QuestionDetailPage({
    Key? key,
    required this.questionId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<QuestionDetailBloc>(
          create: (context) => QuestionDetailBloc(
            questionRepository:
                RepositoryProvider.of<QuestionRepositoryInterface>(context),
            authRepository:
                RepositoryProvider.of<AuthRepositoryInterface>(context),
          )..add(
              QuestionDetailLoadEvent(questionId),
            ),
        ),
        BlocProvider<AnswerBloc>(
          create: (context) => AnswerBloc(
            answerRepository:
                RepositoryProvider.of<AnswerRepositoryInterface>(context),
            authRepository:
                RepositoryProvider.of<AuthRepositoryInterface>(context),
          )..add(LoadAnswersAnswerEvent(questionId)),
        ),
      ],
      child: QuestionDetailScreen(
        questionId: questionId,
      ),
    );
  }
}
