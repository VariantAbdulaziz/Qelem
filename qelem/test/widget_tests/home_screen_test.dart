import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qelem/presentation/pages/home_screen/home_screen.dart';

void main() {
  testWidgets('Home screen test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: homeScreen()));

    expect(find.byType(ListView), findsOneWidget);
  });
}
