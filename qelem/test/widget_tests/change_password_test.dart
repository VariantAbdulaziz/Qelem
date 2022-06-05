import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/application/change_password/change_password_bloc.dart';
import 'package:qelem/application/change_password/change_password_event.dart';
import 'package:qelem/application/change_password/change_password_state.dart';
import 'package:qelem/domain/auth/change_password_form.dart';
import 'package:qelem/presentation/pages/change_password_form/change_password_screen.dart';
import 'package:qelem/util/error.dart';

import 'change_password_test.mocks.dart';

@GenerateMocks([ChangePasswordBloc, ChangePasswordForm])
void main() {
  late MockChangePasswordBloc mockChangePasswordBloc;
  late MockChangePasswordForm mockChangePasswordForm;

  setUp(() {
    mockChangePasswordBloc = MockChangePasswordBloc();
    mockChangePasswordForm = MockChangePasswordForm();
  });
  testWidgets('Change password screen test', (WidgetTester tester) async {
    when(mockChangePasswordBloc.state).thenReturn(ChangePasswordStateInitial());
    when(mockChangePasswordBloc.stream).thenAnswer((_) => Stream.fromIterable([
          const ChangePasswordStateLoading(),
          const ChangePasswordStateSuccess(),
          ChangePasswordStateFailure(Error('error')),
        ]));

    await tester.pumpWidget(
      BlocProvider<MockChangePasswordBloc>(
        create: (c) => mockChangePasswordBloc,
        child: const Scaffold(),
      ),
    );

    // expect(find.widgetWithText(ElevatedButton, 'UPDATE'), findsOneWidget);

    // expect(find.widgetWithText(ElevatedButton, "UPDATE"), findsOneWidget);

    // expect(find.byType(TextFormField), findsNWidgets(3));

    // expect(find.widgetWithIcon(IconButton, Icons.visibility), findsNWidgets(3));
  });
}
