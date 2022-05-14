import 'package:flutter/material.dart';

class PostQuestionScreen extends StatefulWidget {
  const PostQuestionScreen({Key? key}) : super(key: key);

  @override
  State<PostQuestionScreen> createState() => _PostQuestionScreenState();
}

class _PostQuestionScreenState extends State<PostQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post A Question"),
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
              maxLines: 10,
              textAlignVertical: TextAlignVertical.top,
            ),
            const SizedBox(height: 25.0),
            ElevatedButton(
              onPressed: () {
                // Respond to button press
              },
              child: const Text('POST'),
            ),
          ],
        ),
      ),
    );
  }
}
