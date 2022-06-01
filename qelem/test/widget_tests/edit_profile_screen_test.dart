import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qelem/presentation/pages/my_profile/my_profile_edit/edit_profile_screen.dart';

void main() {
  testWidgets('Edit profile screen test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: EditProfileScreen()));

    expect(find.widgetWithText(ElevatedButton, "UPDATE"), findsOneWidget);

    expect(find.widgetWithIcon(IconButton, Icons.camera_alt), findsOneWidget);

    expect(find.byType(TextFormField), findsNWidgets(3));

    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}
