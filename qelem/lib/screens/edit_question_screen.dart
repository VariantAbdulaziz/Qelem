import 'package:flutter/material.dart';

class EditQuestionScreen extends StatefulWidget {
  const EditQuestionScreen({Key? key}) : super(key: key);

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
                  builder: (context) => discardEditDialog(context));
            },
            icon: const Icon(Icons.chevron_left)),
      ),
      body: Padding(
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
    );
  }
}

AlertDialog discardEditDialog(BuildContext context) {
  return AlertDialog(
    title: const Text('Discard edit?'),
    actions: [
      TextButton(
        onPressed: () {},
        child: const Text('YES'),
      ),
      TextButton(
        onPressed: () {},
        child: const Text('NO'),
      ),
    ],
  );
}
