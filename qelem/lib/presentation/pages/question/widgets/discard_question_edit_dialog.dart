import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DiscardQuestionEditDialog extends StatelessWidget {
  DiscardQuestionEditDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Discard edit?'),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: const Text('YES'),
        ),
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: const Text('NO'),
        ),
      ],
    );
  }
}
