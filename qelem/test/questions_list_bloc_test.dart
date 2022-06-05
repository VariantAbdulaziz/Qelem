import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/application/question/questions_list/questions_list_bloc.dart';
import 'package:qelem/application/question/questions_list/questions_list_event.dart';
import 'package:qelem/application/question/questions_list/questions_list_state.dart';
import 'package:qelem/infrastructure/question/question_repository.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

import 'questions_tests_util.dart';
import 'questions_list_bloc_test.mocks.dart';

@GenerateMocks([QuestionRepository])
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late MockQuestionRepository mockQuestionRepository;

  setUp(() {
    mockQuestionRepository = MockQuestionRepository();
  });

  group("QuestionsListsBloc", () {
    test(
        "should emit [QuestionListStateLoading, QuestionListStateSuccess] when event QuestionsListEventLoad is called and no error occur",
        () async {
      final mockQuestion = await getQuestion();
      final mockQuestions = List.generate(3, (index) => mockQuestion);

      when(mockQuestionRepository.getMyQuestions())
          .thenAnswer((_) async => Either(val: mockQuestions));

      final questionsListBloc =
          QuestionsListBloc(questionRepository: mockQuestionRepository);

      questionsListBloc.add(const QuestionsListEventLoad());

      final expected = [
        const QuestionsListStateLoading(),
        QuestionsListStateSuccess(mockQuestions),
      ];

      expectLater(questionsListBloc.stream, emitsInOrder(expected));
    });

    test(
        "should emit [QuestionListStateLoading, QuestionListStateError] when event QuestionsListEventLoad is called and an error occurs",
        () async {
      when(mockQuestionRepository.getMyQuestions())
          .thenAnswer((_) async => Either(error: Error('error')));

      final questionsListBloc =
          QuestionsListBloc(questionRepository: mockQuestionRepository);

      questionsListBloc.add(const QuestionsListEventLoad());

      final expected = [
        const QuestionsListStateLoading(),
        QuestionsListStateError(Error('error')),
      ];
      expectLater(questionsListBloc.stream, emitsInOrder(expected));
    });
  });
}
