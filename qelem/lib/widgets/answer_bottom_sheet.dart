import 'package:flutter/material.dart';

class AnswerBottomSheet extends StatelessWidget {
  const AnswerBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          children: [
            Text(
              "Answer Form",
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 40),
            TextFormField(
              initialValue: '',
              decoration: const InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
                alignLabelWithHint: true,
              ),
              maxLines: 14,
              textAlignVertical: TextAlignVertical.top,
            ),
            const SizedBox(
              height: 20,
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "POST",
                      style: Theme.of(context).primaryTextTheme.button,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
