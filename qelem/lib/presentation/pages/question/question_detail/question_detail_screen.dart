import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/application/answer/answer_bloc.dart';
import 'package:qelem/application/answer/answer_event.dart';
import 'package:qelem/application/answer/answer_state.dart';
import 'package:qelem/application/question/question_detail/question_detail_bloc.dart';
import 'package:qelem/application/question/question_detail/question_detail_event.dart';
import 'package:qelem/application/question/question_detail/question_detail_state.dart';
import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/domain/answer/answer_form.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/domain/question/question.dart';
import 'package:qelem/presentation/pages/answer/widgets/answer_card.dart';
import 'package:qelem/presentation/pages/question/question_detail/widgets/answer_bottom_sheet.dart';
import 'package:qelem/presentation/pages/question/question_detail/widgets/answer_placehoder.dart';
import 'package:qelem/presentation/pages/question/question_detail/widgets/delete_question_dialog.dart';
import 'package:qelem/presentation/pages/question/question_detail/widgets/question_placeholder.dart';
import 'package:qelem/presentation/routes/routes.dart';

class QuestionDetailScreen extends StatefulWidget {
  const QuestionDetailScreen({Key? key, required this.questionId})
      : super(key: key);

  final int questionId;

  @override
  State<QuestionDetailScreen> createState() => _QuestionDetailScreenState();
}

class _QuestionDetailScreenState extends State<QuestionDetailScreen> {
  var dropdownValue = "Recency";

  @override
  Widget build(BuildContext context) {
    return BlocListener<QuestionDetailBloc, QuestionDetailState>(
      listener: (context, state) {
        if (state is QuestionDetailStateError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error.message),
              backgroundColor: Colors.red,
            ),
          );
        }

        if (state is QuestionDetailStateDeleteSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Question deleted successfully'),
              backgroundColor: Colors.green,
            ),
          );
          GoRouter.of(context).go(Routes.home);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            // Shown when the user is the author of the question.
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () =>
                  context.go('/edit-question/${widget.questionId}'),
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                showDialog(
                  context: this.context,
                  builder: (context) => DeleteQuestionDialog(
                    onDelete: () {
                      BlocProvider.of<QuestionDetailBloc>(this.context).add(
                        QuestionDetailDeleteEvent(widget.questionId),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
        body: NestedScrollView(
          body: Stack(
            children: [
              BlocBuilder<AnswerBloc, AnswerState>(
                buildWhen: (previous, current) {
                  // Don't update when previous is not initialized and current is Errror, or when current state is success.
                  return !(previous is! AnswerStateInitial &&
                          current is AnswerStateError) ||
                      current is! AnswerStateSuccess;
                },
                builder: (context, state) {
                  if (state is AnswerStateLoadedAnswers) {
                    return _buildAnswers(context, state.answers);
                  } else if (state is AnswerStateError) {
                    return Center(
                      child: Text(state.error.message),
                    );
                  }

                  return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: _buildAnswersPlaceHolder());
                },
              ),
              // Answer button
              Positioned(
                  right: 0.0,
                  bottom: 0.0,
                  child: GestureDetector(
                    key: const Key('answer_question'),
                    onTap: () {
                      showModalBottomSheet(
                        context: this.context,
                        isScrollControlled: true,
                        builder: (builder) {
                          return AnswerBottomSheet(
                            isEdit: false,
                            onSubmit: (answer) {
                              Navigator.pop(context);
                              BlocProvider.of<AnswerBloc>(this.context).add(
                                  AddAnswerEvent(AnswerForm(
                                      questionId: widget.questionId,
                                      content: answer)));
                            },
                          );
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                        ),
                      ),
                      width: 98,
                      height: 44,
                      child: Center(
                        child: Text("ANSWER",
                            style: Theme.of(context).primaryTextTheme.button),
                      ),
                    ),
                  ))
            ],
          ),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverPadding(
                  padding: const EdgeInsets.all(0.0),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      BlocBuilder<QuestionDetailBloc, QuestionDetailState>(
                        buildWhen: (previous, current) {
                          // Don't update when previous is not initialized and current is Errror, or when current state is success.
                          return !(previous is! QuestionDetailStateInitial &&
                                  current is QuestionDetailStateError) ||
                              current is! QuestionDetailStateDeleteSuccess;
                        },
                        builder: (context, state) {
                          if (state is QuestionDetailStateLoadedQuestion) {
                            return _buildQuestionHeader(
                                context, state.question);
                          } else if (state is QuestionDetailStateError) {
                            return Center(
                              child: Text(state.error.message),
                            );
                          }

                          return Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: _buildQuestionHeaderShimmer(),
                          );
                        },
                      ),
                    ]),
                  ))
            ];
          },
        ),
      ),
    );
  }

  Widget _buildQuestionHeaderShimmer() {
    return const QuestionPlaceholder();
  }

  Widget _buildAnswersPlaceHolder() {
    return ListView.builder(itemBuilder: (context, index) {
      return const AnswerPlaceholder();
    });
  }

  onVote(Question question, Vote vote) {
    BlocProvider.of<QuestionDetailBloc>(context)
        .add(VoteQuestionEvent(question, vote));
  }

  Widget _buildQuestionHeader(BuildContext context, Question question) {
    final author = question.author;
    final notVottedTextTheme = Theme.of(context).textTheme.bodyLarge;
    final vottedTheme =
        notVottedTextTheme?.copyWith(color: Theme.of(context).primaryColor);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question.topic,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 10),
              Wrap(
                runAlignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundImage: NetworkImage(author.profilePicture),
                    ),
                  ),
                  Text("${author.firstName} ${author.lastName}"),
                  const SizedBox(width: 10.0),
                  const Text("3000 Reputation"),
                  const SizedBox(width: 10.0),
                  Row(
                    children: [
                      const Text("Asked:"),
                      const SizedBox(width: 5.0),
                      Text(question.createdAt.toLocal().toString()),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            question.content,
            textAlign: TextAlign.start,
            style:
                Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 16.0),
          ),
        ),
        if (question.tags.isNotEmpty) const Divider(),
        if (question.tags.isNotEmpty)
          Wrap(
            children: [
              for (final tag in question.tags)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Chip(
                    label: Text(tag.name.value),
                  ),
                ),
            ],
          ),
        const Divider(),
        ButtonBar(
          alignment: MainAxisAlignment.end,
          children: [
            Text(question.upVotes.toString(),
                style: question.userVote == Vote.upVote
                    ? vottedTheme
                    : notVottedTextTheme),
            IconButton(
                onPressed: () {
                  if (question.userVote == Vote.upVote) {
                    onVote(question, Vote.none);
                  } else {
                    onVote(question, Vote.upVote);
                  }
                },
                icon: Icon(
                  Icons.keyboard_arrow_up,
                  color: question.userVote == Vote.upVote
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                )),
            Text(question.downVotes.toString(),
                style: question.userVote == Vote.downVote
                    ? vottedTheme
                    : notVottedTextTheme),
            IconButton(
              onPressed: () {
                if (question.userVote == Vote.downVote) {
                  onVote(question, Vote.none);
                } else {
                  onVote(question, Vote.downVote);
                }
              },
              icon: Icon(Icons.keyboard_arrow_down,
                  color: question.userVote == Vote.downVote
                      ? Theme.of(context).primaryColor
                      : Colors.grey),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAnswers(BuildContext context, List<Answer> answers) {
    if (answers.isEmpty) {
      return Center(
        child: Text(
            "Looks like there are no answers yet.\n Be the first to answer!",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6),
      );
    }

    return ListView.builder(
      itemCount: answers.length,
      itemBuilder: (context, index) {
        final answer = answers[index];
        return AnswerCard(
          answer: answer,
          onDelete: () {
            BlocProvider.of<AnswerBloc>(context)
                .add(DeleteAnswerEvent(answers[index]));
          },
          onDownVote: () {
            BlocProvider.of<AnswerBloc>(context)
                .add(VoteAnswerEvent(answers[index], Vote.downVote));
          },
          onUpVote: () {
            BlocProvider.of<AnswerBloc>(context)
                .add(VoteAnswerEvent(answers[index], Vote.upVote));
          },
          onUnVote: () {
            BlocProvider.of<AnswerBloc>(context)
                .add(VoteAnswerEvent(answers[index], Vote.none));
          },
          isOwner: true,
          onEdit: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (builder) {
                return AnswerBottomSheet(
                  isEdit: true,
                  answerText: answers[index].content,
                  onSubmit: (answer) {
                    Navigator.pop(context);
                    BlocProvider.of<AnswerBloc>(context).add(UpdateAnswerEvent(
                        answers[index].copyWith(content: answer)));
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
