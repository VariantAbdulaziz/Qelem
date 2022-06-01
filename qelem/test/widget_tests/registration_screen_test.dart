import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qelem/presentation/pages/register/registration_screen.dart';

void main() {
  testWidgets('Registration screen test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: RegistrationScreen()));
    expect(find.text('Create Your Account'), findsOneWidget);

    expect(find.widgetWithText(TextButton, "SIGN IN"), findsOneWidget);

    expect(find.widgetWithText(ElevatedButton, "SIGN UP"), findsOneWidget);

    expect(find.byType(TextFormField), findsNWidgets(4));

    expect(find.widgetWithIcon(IconButton, Icons.visibility), findsOneWidget);
  });
}