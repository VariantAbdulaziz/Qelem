import 'package:flutter/material.dart';

class DiscardQuestionEditDialog extends StatelessWidget {
  const DiscardQuestionEditDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
