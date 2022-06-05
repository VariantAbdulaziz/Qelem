import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qelem/presentation/pages/boarding/register_login_screen.dart';

void main() {
  testWidgets('Boarding screen test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: RegisterLoginScreen()));
    expect(find.text('Hey! Welcome'), findsOneWidget);

    expect(find.byType(Image), findsOneWidget);

    expect(find.widgetWithText(ElevatedButton, "CREATE AN ACCOUNT"), findsOneWidget);

    expect(find.widgetWithText(ElevatedButton, "SIGN IN"), findsOneWidget);
  });
}