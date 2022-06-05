import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DiscardQuestionEditDialog extends StatelessWidget {
  var id;
  String curPath;
  String prevPath;
  DiscardQuestionEditDialog(
      {Key? key, this.id, required this.prevPath, required this.curPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Discard edit?'),
      actions: [
        TextButton(
          onPressed: () => context.go("$prevPath$id"),
          child: const Text('YES'),
        ),
        TextButton(
          onPressed: () => context.go("$curPath$id"),
          child: const Text('NO'),
        ),
      ],
    );
  }
}
