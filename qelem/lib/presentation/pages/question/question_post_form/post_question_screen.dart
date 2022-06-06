import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/application/question/question_construction/question_construction_bloc.dart';
import 'package:qelem/application/question/question_construction/question_construction_event.dart';
import 'package:qelem/application/question/question_construction/question_construction_state.dart';
import 'package:qelem/application/tag/tag_bloc.dart';
import 'package:qelem/application/tag/tag_event.dart';
import 'package:qelem/application/tag/tag_state.dart';
import 'package:qelem/domain/core/validiator.dart';
import 'package:qelem/domain/question/question_form.dart';
import 'package:qelem/domain/question/question_repository_interface.dart';
import 'package:qelem/domain/tag/tag_repository_interface.dart';
import 'package:qelem/infrastructure/tag/tag_repository.dart';
import 'package:qelem/presentation/routes/routes.dart';

class PostQuestionScreen extends StatefulWidget {
  const PostQuestionScreen({Key? key}) : super(key: key);

  @override
  State<PostQuestionScreen> createState() => _PostQuestionScreenState();
}

class _PostQuestionScreenState extends State<PostQuestionScreen> {
  bool _isNetworkInProgress = false;
  final _postQuestionFormKey =
      GlobalKey<FormState>(debugLabel: "post_question_form");

  TextEditingController topicController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<QuestionContructionBloc>(
          create: (context) => QuestionContructionBloc(
            questionRepository:
                RepositoryProvider.of<QuestionRepositoryInterface>(context),
            tagRepository:
                RepositoryProvider.of<TagRepositoryInterface>(context),
          )..add(const QuestionConstructionLoadTagsEvent()),
        ),
      ],
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
            context.go(Routes.myQuestions);
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
        builder: (builder_context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Post A Question"),
            ),
            body: ListView(children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 24.0),
                child: Form(
                  key: _postQuestionFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        key: const Key('topic'),
                        controller: topicController,
                        validator: (value) {
                          if (validateNotEmpty(value!, "topic") != null) {
                            return validateNotEmpty(value, "topic")!
                                .error!
                                .message;
                          } else {
                            return null;
                          }
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
                          if (validateNotEmpty(value!, "Content") != null) {
                            return validateNotEmpty(value, "Content")!
                                .error!
                                .message;
                          } else {
                            return null;
                          }
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
                      BlocBuilder<QuestionContructionBloc,
                          QuestionConstructionState>(
                        builder: (context, state) {
                          if (state is QuestionPostStateLoadingTags) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Loading Tags...'),
                                SizedBox(height: 16.0),
                                LinearProgressIndicator(),
                              ],
                            );
                          }

                          if (state is QuestionPostStateLoadedTags) {
                            return Wrap(
                              spacing: 8.0,
                              runSpacing: 8.0,
                              children: [
                                for (final tag in state.selectedTags)
                                  ChoiceChip(
                                      label: Text(tag.name.value),
                                      selected: true,
                                      onSelected: (selected) {
                                        BlocProvider.of<
                                                    QuestionContructionBloc>(
                                                context)
                                            .add(QuestionConstructionEvent
                                                .toggleTag(tag));
                                      }),
                                for (final tag in state.unslectedTags)
                                  ChoiceChip(
                                      label: Text(tag.name.value),
                                      selected: false,
                                      onSelected: (selected) {
                                        BlocProvider.of<
                                                    QuestionContructionBloc>(
                                                context)
                                            .add(QuestionConstructionEvent
                                                .toggleTag(tag));
                                      }),
                              ],
                            );
                          }

                          if (state is QuestionPostStateLoadedTags) {}

                          return Container();
                        },
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            key: const Key('post_question'),
                            onPressed: _isNetworkInProgress
                                ? null
                                : () {
                                    if (_postQuestionFormKey.currentState!
                                        .validate()) {
                                      var form = QuestionForm(
                                          topic: topicController.text,
                                          content: contentController.text,
                                          tags: []);

                                      BlocProvider.of<QuestionContructionBloc>(
                                              builder_context)
                                          .add(
                                        QuestionEventPost(form),
                                      );
                                    }
                                  },
                            child: const Text('POST'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
