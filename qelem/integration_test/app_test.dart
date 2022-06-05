import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:qelem/main.dart' as app;
import 'package:qelem/presentation/pages/question/my_questions_page/my_questions_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('register and login', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      expect(find.text('CREATE AN ACCOUNT'), findsOneWidget);

      final createAccountButton = find.byKey(const Key('create_account'));

      await tester.tap(createAccountButton);

      final signUpButton = find.byKey(const Key('sign_up'));
      final username = find.byKey(const Key('username'));
      final firstName = find.byKey(const Key('firstName'));
      final lastName = find.byKey(const Key('lastName'));
      final password = find.byKey(const Key('Password'));

      await tester.enterText(username, "bruktedla23");
      await tester.enterText(firstName, "Bruk");
      await tester.enterText(lastName, "Tedla");
      await tester.enterText(password, "bruktedla");

      await tester.tap(signUpButton);

      await tester.pumpAndSettle();
      final signInButton = find.byKey(const Key('sign_in'));

      expect(signInButton, findsOneWidget);

      final signInUsername = find.byKey(const Key('username'));
      final signInPassword = find.byKey(const Key('password'));
      final rememberMeCheckBox = find.byType(Checkbox);

      await tester.enterText(signInUsername, "bruktedla23");
      await tester.enterText(signInPassword, "bruktedla");
      await tester.tap(rememberMeCheckBox);
      await tester.tap(signInButton);

      await tester.pumpAndSettle();
    });

    testWidgets('bottom bar navigation', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      expect(find.text('Home'), findsNWidgets(2));

      final createQuestinButton = find.byType(FloatingActionButton);

      await tester.tap(createQuestinButton);

      await tester.pumpAndSettle();
      final postQuestionButton = find.byKey(const Key('post_question'));
      expect(postQuestionButton, findsOneWidget);

      final topic = find.byKey(const Key('topic'));
      final content = find.byKey(const Key('content'));

      await tester.enterText(topic, "bonjor");
      await tester.enterText(content, "lorem ipsum dolor sit amet");
      await tester.tap(postQuestionButton);

      await tester.pumpAndSettle();

      expect(find.text('Home'), findsNWidgets(2));
    });
  });
}
