import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/question/question_bloc.dart';
import 'package:qelem/domain/question/question.dart';

import '../widgets/question_card.dart';

class MyQuestionsScreen extends StatefulWidget {
  // final User user;

  const MyQuestionsScreen({Key? key}) : super(key: key);

  @override
  _MyQuestionsScreenState createState() => _MyQuestionsScreenState();
}

class _MyQuestionsScreenState extends State<MyQuestionsScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      builder: (context, state) {
        if (state.status == QuestionStateStatus.error) {
          return const Center(child: Text('Error')); // todo: a better widget
        } else if (state.status == QuestionStateStatus.initial) {
          BlocProvider.of<QuestionBloc>(context).add(QuestionEventFetch());
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == QuestionStateStatus.loaded) {
          if (state.questions.isEmpty) {
            return const Center(child: Text('No questions'));
          }
          return ListView.builder(
            itemCount: state.reachedEnd ? state.questions.length : state.questions.length + 1,
            itemBuilder: (context, position) {
              return position >= state.questions.length
                  ? BottomLoader() // fetch the next 20 questions
                  : QuestionCard(Question(
                      id: position,
                      topic: state.questions[position].topic,
                      content: state.questions[position].content,
                      author: state.questions[position].author,
                      upVotes: state.questions[position].upVotes,
                      downVotes: state.questions[position].downVotes,
                      userVote: state.questions[position].userVote,
                    ));
            },
            controller: _scrollController,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) BlocProvider.of<QuestionBloc>(context).add(QuestionEventFetch());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
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
