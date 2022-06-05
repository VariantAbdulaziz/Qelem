import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/question/question_construction/question_construction_bloc.dart';
import 'package:qelem/application/question/question_construction/question_construction_event.dart';
import 'package:qelem/application/question/question_construction/question_construction_state.dart';
import 'package:qelem/domain/question/question_form.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/infrastructure/question/question_repository.dart';

class PostQuestionScreen extends StatefulWidget {
  const PostQuestionScreen({Key? key}) : super(key: key);

  @override
  State<PostQuestionScreen> createState() => _PostQuestionScreenState();
}

class _PostQuestionScreenState extends State<PostQuestionScreen> {
  bool _isNetworkInProgress = false;
  final _postQuestionFormKey = GlobalKey<FormState>();

  TextEditingController topicController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionContructionBloc(
          questionRepository:
              RepositoryProvider.of<QuestionRepository>(context)),
      child: BlocConsumer<QuestionContructionBloc, QuestionConstructionState>(
        listener: (context, state) {
          if (state is QuestionPostStateLoading) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Posting Question...')),
            );
            setState(() {
              _isNetworkInProgress = true;
            });
          } else {
            setState(() {
              _isNetworkInProgress = false;
            });
          }

          if (state is QuestionPostStateSuccess) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Question Posted Successfully'),
                backgroundColor: Colors.green,
              ),
            );
            context.pop();
          }

          if (state is QuestionPostStateError) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error.message),
                backgroundColor: Theme.of(context).errorColor,
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Post A Question"),
            ),
            body: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Form(
                key: _postQuestionFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(
                      key: const Key('topic'),
                      controller: topicController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Topic can not be empty';
                        }
                        if (value.length > 30) {
                          return 'Try to keep the topic short';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: 'Topic',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      key: const Key('content'),
                      controller: contentController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Question can not be empty';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: 'Content',
                        border: OutlineInputBorder(),
                        alignLabelWithHint: true,
                      ),
                      maxLines: 10,
                      textAlignVertical: TextAlignVertical.top,
                    ),
                    const SizedBox(height: 25.0),
                    ElevatedButton(
                      key: const Key('post_question'),
                      onPressed: _isNetworkInProgress
                          ? null
                          : () {
                              if (_postQuestionFormKey.currentState!
                                  .validate()) {
                                var form = QuestionForm(
                                    topic: topicController.text,
                                    content: contentController.text);

                                BlocProvider.of<QuestionContructionBloc>(
                                        context)
                                    .add(
                                  QuestionEventPost(form),
                                );
                              }
                            },
                      child: const Text('POST'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
