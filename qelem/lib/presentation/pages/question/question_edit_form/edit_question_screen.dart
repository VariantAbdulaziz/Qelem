import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qelem/application/question/edit_question/edit_question_bloc.dart';
import 'package:qelem/application/question/edit_question/edit_question_event.dart';
import 'package:qelem/application/question/edit_question/edit_question_state.dart';
import 'package:qelem/domain/core/validiator.dart';
import 'package:qelem/domain/question/question_form.dart';
import 'package:qelem/presentation/pages/question/widgets/discard_question_edit_dialog.dart';

class EditQuestionScreen extends StatefulWidget {
  const EditQuestionScreen({Key? key, required this.qid}) : super(key: key);

  final int qid;

  @override
  State<EditQuestionScreen> createState() => _EditQuestionScreenState();
}

class _EditQuestionScreenState extends State<EditQuestionScreen> {
  bool _isNetworkInProgress = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController topicController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => EditQuestionBloc(RepositoryProvider.of(context)),
        child: BlocConsumer<EditQuestionBloc, EditQuestionState>(
          listener: (context, state) {
            if (state is EditQuestionStateLoading) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("Updating...")));
              setState(() {
                _isNetworkInProgress = true;
              });
            } else {
              setState(() {
                _isNetworkInProgress = false;
              });
            }
            if (state is EditQuestionStateSuccess) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Question updated'),
                  backgroundColor: Colors.green,
                ),
              );
            }
            if (state is EditQuestionStateFailure) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error.message),
                  backgroundColor: Theme.of(context).errorColor,
                ),
              );
            }
          },
          builder: ((context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Edit"),
                leading: IconButton(
                    onPressed: () {
                      showDialog<void>(
                          context: context,
                          builder: (context) => DiscardQuestionEditDialog(
                              curPath: "/edit-question/",
                              id: widget.qid,
                              prevPath: "/question-detail/"));
                    },
                    icon: const Icon(Icons.chevron_left)),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                // initialValue: '',
                                controller: topicController,
                                validator: (value) {
                                  if (validateNotEmpty(value!, "Topic") !=
                                      null) {
                                    return validateNotEmpty(value, "Topic")!
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
                                // initialValue: '',
                                controller: contentController,
                                validator: (value) {
                                  if (validateNotEmpty(value!, "Content") !=
                                      null) {
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
                                maxLines: 20,
                                textAlignVertical: TextAlignVertical.top,
                              ),
                            ],
                          )),
                      const SizedBox(height: 25.0),
                      ElevatedButton(
                        onPressed: _isNetworkInProgress
                            ? null
                            : () async {
                                if (_formKey.currentState!.validate()) {
                                  var questionForm = QuestionForm(
                                      topic: topicController.text,
                                      content: contentController.text,
                                      tags: []);

                                  BlocProvider.of<EditQuestionBloc>(context)
                                      .add(EditQuestionEventEdit(
                                          questionForm, widget.qid));
                                  context.go("/question-detail/${widget.qid}");
                                }
                              },
                        child: const Text('SAVE'),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ));
  }
}
