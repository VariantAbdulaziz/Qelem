// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:qelem/presentation/app_widget.dart';

void main() {
  testWidgets('Home widget test', (WidgetTester tester) async {
    HttpOverrides.runZoned(
      () => tester.pumpWidget(App()),
      createHttpClient: (url) {
        return MockHttpClient();
      },
    );
    await tester.pumpWidget();
    expect(find.text('My Questions'), findsOneWidget);
  });
}
