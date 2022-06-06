import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qelem/presentation/pages/main_screen/widgets/logout_dialog.dart';

void main() {
  testWidgets('Logout dialog test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LogoutDialog()));

    expect(find.widgetWithText(AlertDialog, "Would you like to logout?"),
        findsOneWidget);
  });
}
