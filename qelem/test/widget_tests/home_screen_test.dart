import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/application/profile/edit_profile/edit_profile_state.dart';
import 'package:qelem/application/question/questions_list/questions_list_bloc.dart';
import 'package:qelem/application/question/questions_list/questions_list_state.dart';
import 'package:qelem/domain/question/question.dart';
import 'package:qelem/presentation/pages/home_screen/home_screen.dart';
import 'package:qelem/presentation/pages/question/widgets/question_card.dart';
import 'package:qelem/util/error.dart';

import 'home_screen_test.mocks.dart';

@GenerateMocks([QuestionsListBloc, Question])
void main() {
  late MockQuestionsListBloc mockQuestionsListBloc;
  late MockQuestion mockQuestion;

  setUp(() {
    mockQuestionsListBloc = MockQuestionsListBloc();
    mockQuestion = MockQuestion();
  });
  testWidgets('Change password screen test', (WidgetTester tester) async {
    final mockQuestions = <MockQuestion>[];

    when(mockQuestionsListBloc.state).thenReturn(QuestionsListState.initial());
    when(mockQuestionsListBloc.stream).thenAnswer((_) => Stream.fromIterable(
          [
            QuestionsListStateSuccess(mockQuestions),
            QuestionsListStateError(Error('error')),
            QuestionsListStateLoading(),
          ],
        ));

    await tester.pumpWidget(
      BlocProvider<QuestionsListBloc>(
        create: (c) => mockQuestionsListBloc,
        child: Center(),
      ),
    );
  });
}
