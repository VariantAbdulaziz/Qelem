import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/domain/question/question.dart';

import '../../../../application/question/questions_list/questions_list_bloc.dart';
import '../../../../application/question/questions_list/questions_list_event.dart';
import '../widgets/question_card.dart';

class MyQuestionsScreen extends StatefulWidget {
  // final User user;

  const MyQuestionsScreen({Key? key}) : super(key: key);

  @override
  _MyQuestionsScreenState createState() => _MyQuestionsScreenState();
}

class _MyQuestionsScreenState extends State<MyQuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
    // final state = context.watch<QuestionsListBloc>().state;

    // return state.when(
    //   initial: () => const Center(child: CircularProgressIndicator()),
    //   error: (error) => const Center(child: Text('Error')),
    //   loading: () => const Center(child: CircularProgressIndicator()),
    //   success: (questions, offset) => NotificationListener<ScrollNotification>(
    //     child: ListView.builder(
    //       itemCount: questions.length + 1,
    //       itemBuilder: (context, position) {
    //         if (position >= questions.length) {
    //           BlocProvider.of<QuestionsListBloc>(context).add(
    //             QuestionsListRequestEvent(
    //                 questions, questions.length as double),
    //           );
    //         }
    //         return position >= questions.length
    //             ? BottomLoader()
    //             : QuestionCard(Question(
    //                 id: position,
    //                 topic: questions[position].topic,
    //                 content: questions[position].content,
    //                 createdAt: questions[position].createdAt,
    //                 updatedAt: questions[position].updatedAt,
    //                 author: questions[position].author,
    //                 upVotes: questions[position].upVotes,
    //                 downVotes: questions[position].downVotes,
    //                 userVote: questions[position].userVote,
    //               ));
    //       },
    //       controller: ScrollController(initialScrollOffset: offset),
    //     ),
    //   ),
    //   empty: () => Container(
    //     color: Colors.black,
    //   ),
    // );
  }
}

class BottomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(strokeWidth: 1.5),
      ),
    );
  }
}
