import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qelem/presentation/pages/question/question_detail/widgets/delete_question_dialog.dart';

void main() {
  testWidgets('Delete question dialog test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: DeleteQuestionDialog(
      onDelete: () {},
    )));

    expect(
        find.widgetWithText(AlertDialog,
            "Deleting a question is permanent and cannot be undone. Are you sure you want to delete this question?"),
        findsOneWidget);
  });
}
