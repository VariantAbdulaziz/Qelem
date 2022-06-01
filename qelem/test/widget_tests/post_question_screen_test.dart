import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qelem/presentation/pages/question/question_post_form/post_question_screen.dart';

void main() {
  testWidgets('Post question screen test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: PostQuestionScreen()));

    expect(find.byType(TextFormField), findsNWidgets(2));

    expect(find.widgetWithText(ElevatedButton, "POST"), findsOneWidget);
  });
}
