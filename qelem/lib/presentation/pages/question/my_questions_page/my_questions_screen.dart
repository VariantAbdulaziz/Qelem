import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/question/questions_list/questions_list_state.dart';

import '../../../../application/question/questions_list/questions_list_bloc.dart';
import '../widgets/question_card.dart';

class MyQuestionsScreen extends StatefulWidget {
  const MyQuestionsScreen({Key? key}) : super(key: key);

  @override
  _MyQuestionsScreenState createState() => _MyQuestionsScreenState();
}

class _MyQuestionsScreenState extends State<MyQuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionsListBloc, QuestionsListState>(
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
    });
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
