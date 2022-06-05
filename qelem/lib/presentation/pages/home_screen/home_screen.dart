import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/question/questions_list/questions_list_event.dart';
import 'package:qelem/application/question/questions_list/questions_list_state.dart';
import 'package:qelem/domain/question/question_repository_interface.dart';

import '../../../../application/question/questions_list/questions_list_bloc.dart';
import '../question/widgets/question_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionsListBloc(
          questionRepository:
              RepositoryProvider.of<QuestionRepositoryInterface>(context))
        ..add(const QuestionsListEventLoadAll()),
      child: BlocBuilder<QuestionsListBloc, QuestionsListState>(
          builder: (context, state) {
        if (state is QuestionsListStateSuccess) {
          if (state.questions.isEmpty) {
            return Center(
              child: Text('No questions yet',
                  style: Theme.of(context).textTheme.headline6),
            );
          }
          return _buildBody(context, state);
        }

        if (state is QuestionsListStateError) {
          return Center(
            child: Text(state.error.toString()),
          );
        }

        return const Center(child: CircularProgressIndicator());
      }),
    );
  }

  _buildBody(BuildContext context, QuestionsListStateSuccess state) {
    return ListView.builder(
      itemCount: state.questions.length,
      itemBuilder: (context, index) {
        final question = state.questions[index];
        return QuestionCard(question);
      },
    );
  }
}
