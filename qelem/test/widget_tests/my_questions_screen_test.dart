import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qelem/presentation/pages/question/my_questions_page/my_questions_screen.dart';

void main() {
  testWidgets('My questions screen test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: MyQuestionsScreen()));

    // expect(find.byType(ListView), findsOneWidget);
  });
}
