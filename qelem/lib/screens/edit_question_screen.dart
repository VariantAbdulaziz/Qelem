import 'package:flutter/material.dart';
import 'package:qelem/widgets/discard_question_edit_dialog.dart';

class EditQuestionScreen extends StatefulWidget {
  const EditQuestionScreen({Key? key, required this.qid}) : super(key: key);

  final int qid;

  @override
  State<EditQuestionScreen> createState() => _EditQuestionScreenState();
}

class _EditQuestionScreenState extends State<EditQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit"),
        leading: IconButton(
            onPressed: () {
              showDialog<void>(
                  context: context,
                  builder: (context) => const DiscardQuestionEditDialog());
            },
            icon: const Icon(Icons.chevron_left)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                initialValue: '',
                decoration: const InputDecoration(
                  labelText: 'Topic',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                initialValue: '',
                decoration: const InputDecoration(
                  labelText: 'Content',
                  border: OutlineInputBorder(),
                  alignLabelWithHint: true,
                ),
                maxLines: 20,
                textAlignVertical: TextAlignVertical.top,
              ),
              const SizedBox(height: 25.0),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                child: const Text('SAVE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
