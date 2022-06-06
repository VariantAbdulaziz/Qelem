import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/tag/tag_bloc.dart';
import 'package:qelem/application/tag/tag_event.dart';
import 'package:qelem/application/tag/tag_state.dart';
import 'package:qelem/domain/tag/tag_name.dart';
import 'package:qelem/domain/tag/tag_name_validator.dart';

class TagsDashboardScreen extends StatefulWidget {
  const TagsDashboardScreen({Key? key}) : super(key: key);

  @override
  State<TagsDashboardScreen> createState() => _TagsDashboardScreenState();
}

class _TagsDashboardScreenState extends State<TagsDashboardScreen> {
  final _tagNameController = TextEditingController();
  final _tagFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagBloc, TagState>(
      builder: (context, state) {
        if (state is TagStateError) {
          return Center(
            child: Text(state.error.message),
          );
        }
        if (state is TagStateLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is TagStateLoadedTags) {
          return ListView(
            children: <Widget>[
              DataTable(
                columnSpacing: 5,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'ID',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tag Name',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: <DataRow>[
                  for (final tag in state.tags)
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                          Text(tag.id.toString()),
                        ),
                        DataCell(
                          Text(tag.name.value),
                        ),
                      ],
                    ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Form(
                        key: _tagFormKey,
                        child: TextFormField(
                          controller: _tagNameController,
                          decoration: const InputDecoration(
                            hintText: "Tag Name",
                          ),
                          validator: (value) {
                            if (!TagNameValidator.isValid(value!)) {
                              return 'Tag name must be between 2 and 10 characters';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        if (_tagFormKey.currentState!.validate()) {
                          BlocProvider.of<TagBloc>(context).add(
                            AddTagEvent(
                                TagName(value: _tagNameController.text)),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        }
        return const Center(
          child: Text('Unknown state'),
        );
      },
    );
  }
}
