import 'package:flutter/material.dart';
import 'package:qelem/domain/core/validiator.dart';

class AnswerBottomSheet extends StatefulWidget {
  final bool isEdit;
  final String? answerText;
  final Function(String) onSubmit;

  const AnswerBottomSheet(
      {Key? key, required this.isEdit, this.answerText, required this.onSubmit})
      : super(key: key);

  @override
  State<AnswerBottomSheet> createState() => _AnswerBottomSheetState();
}

class _AnswerBottomSheetState extends State<AnswerBottomSheet> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.text = widget.answerText ?? "";
  }

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
              key: const Key('post_answer_form'),
              controller: textEditingController,
              validator: (value) {
                if (validateNotEmpty(value!, "topic") != null) {
                  return validateNotEmpty(value, "topic")!.error!.message;
                } else {
                  return null;
                }
              },
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
                  key: const Key('submit_answer'),
                    onPressed: () {
                      widget.onSubmit(textEditingController.text);
                    },
                    child: Text(widget.isEdit ? "Update" : "Submit",
                        style: Theme.of(context).primaryTextTheme.button)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
