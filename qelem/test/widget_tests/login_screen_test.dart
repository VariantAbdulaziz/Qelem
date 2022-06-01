import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qelem/presentation/pages/signin/login_screen.dart';

void main() {
  testWidgets('Login screen test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginScreen()));
    expect(find.text('Sign In'), findsOneWidget);

    expect(find.widgetWithText(TextButton, "SIGN UP"), findsOneWidget);

    expect(find.widgetWithText(ElevatedButton, "SIGN IN"), findsOneWidget);

    expect(find.byType(TextFormField), findsNWidgets(2));

    expect(find.widgetWithIcon(IconButton, Icons.visibility), findsOneWidget);
  });
}