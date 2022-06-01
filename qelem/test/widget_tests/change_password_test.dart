import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qelem/presentation/pages/change_password_form/change_password_screen.dart';

void main() {
  testWidgets('Change password screen test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ChangePasswordScreen()));

    expect(find.widgetWithText(ElevatedButton, "UPDATE"), findsOneWidget);

    expect(find.byType(TextFormField), findsNWidgets(3));

    expect(find.widgetWithIcon(IconButton, Icons.visibility), findsNWidgets(3));
  });
}