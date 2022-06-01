import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qelem/presentation/pages/question/question_detail/question_detail_screen.dart';

void main() {
  testWidgets('Question detail screen test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: QuestionDetailScreen(qid: 12)));

    expect(find.byType(NestedScrollView), findsOneWidget);
  });
}

