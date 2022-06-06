import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:qelem/main.dart' as app;
import 'package:qelem/presentation/pages/question/widgets/question_card.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  Random random = Random();
  final id = random.nextInt(5000);

  group('end-to-end test', () {
    testWidgets('register', (tester) async {
      app.main();
      await tester.pumpAndSettle(const Duration(seconds: 1, milliseconds: 500));

      final createAccountButton = find.byKey(const Key('create_account'));

      await tester.tap(createAccountButton);
      await tester.pumpAndSettle();

      final username = find.byKey(const Key('username'));
      final firstName = find.byKey(const Key('firstName'));
      final lastName = find.byKey(const Key('lastName'));
      final password = find.byKey(const Key('password'));
      final signUpButton = find.byKey(const Key('sign_up'));

      await tester.tap(firstName);
      await tester.enterText(firstName, "nazfinal");

      await tester.tap(lastName);
      await tester.enterText(lastName, "nazfinal");

      await tester.tap(username);
      await tester.enterText(username, "nazfinal");

      await tester.tap(password);
      await tester.enterText(password, "nazfinal");

      await tester.tap(signUpButton);

      await tester.pumpAndSettle(const Duration(seconds: 5));
      await Future.delayed(const Duration(seconds: 2));
    });

    testWidgets('login', (tester) async {
      app.main();
      await tester.pumpAndSettle(const Duration(seconds: 1, milliseconds: 500));

      final loginButton = find.byKey(const Key('sign_in'));

      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      final username = find.byKey(const Key('username'));
      final password = find.byKey(const Key('password'));
      final signInButton = find.byKey(const Key('sign_in'));

      await tester.tap(username);
      await tester.enterText(username, "nazfinal");

      await tester.tap(password);
      await tester.enterText(password, "nazfinal");

      await tester.tap(signInButton);

      await tester.pumpAndSettle(const Duration(seconds: 5));
      await Future.delayed(const Duration(seconds: 2));
    });

    testWidgets('business feature #1: post question', (tester) async {
      app.main();
      await tester.pumpAndSettle(const Duration(seconds: 1, milliseconds: 500));

      expect(find.text('Home'), findsWidgets);

      final createQuestionButton = find.byType(FloatingActionButton);

      await tester.tap(createQuestionButton);
      await tester.pumpAndSettle();

      final postQuestionButton = find.byKey(const Key('post_question'));
      expect(postQuestionButton, findsOneWidget);

      final topic = find.byKey(const Key('topic'));
      final content = find.byKey(const Key('content'));

      await tester.tap(topic);
      await tester.enterText(topic, "Question topic $id");

      await tester.tap(content);
      await tester.enterText(content, "Question content new: lorem ipsum dolor sit amet");

      await tester.tap(postQuestionButton);

      await tester.pumpAndSettle(const Duration(seconds: 2));
      await Future.delayed(const Duration(seconds: 2));

      expect(find.widgetWithText(QuestionCard, "Question topic $id"), findsWidgets);
    });

    testWidgets('business feature #2: answer question', (tester) async {
      app.main();
      await tester.pumpAndSettle(const Duration(seconds: 1, milliseconds: 500));

      await tester.pumpAndSettle(const Duration(seconds: 2));

      final question = find.widgetWithText(QuestionCard, 'test question');

      await tester.tap(question);
      await tester.pumpAndSettle();

      final answerQuestionButton = find.byKey(const Key('answer_question'));
      expect(answerQuestionButton, findsOneWidget);

      await tester.tap(answerQuestionButton);
      await tester.pumpAndSettle(const Duration(milliseconds: 500));

      final answerForm = find.byKey(const Key('post_answer_form'));
      final submitButton = find.byKey(const Key('submit_answer'));

      await tester.tap(answerForm);
      await tester.enterText(answerForm, "Answer content: lorem ipsum dolor sit amet");

      await tester.tap(submitButton);

      await tester.pumpAndSettle(const Duration(seconds: 2));
      await Future.delayed(const Duration(seconds: 2));
    });
  });
}
