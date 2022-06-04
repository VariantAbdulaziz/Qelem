import 'package:flutter/material.dart';

class DeleteQuestionDialog extends StatelessWidget {
  final Function onDelete;

  const DeleteQuestionDialog({Key? key, required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Delete question'),
      content: SingleChildScrollView(
        child: ListBody(
          children: const <Widget>[
            Text(
                'Deleting a question is permanent and cannot be undone. Are you sure you want to delete this question?'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel', style: TextStyle(color: Colors.black)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Delete'),
          onPressed: () {
            Navigator.of(context).pop();
            onDelete();
          },
        ),
      ],
    );
  }
}
