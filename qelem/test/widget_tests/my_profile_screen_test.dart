import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qelem/presentation/pages/my_profile/my_profile_overview/my_profile_screen.dart';

void main() {
  testWidgets('My profile screen test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MyProfileScreen()));

    expect(find.byType(CircleAvatar), findsOneWidget);

    expect(find.textContaining('@'), findsOneWidget);

    expect(find.byType(InkWell), findsNWidgets(2));
  });
}
