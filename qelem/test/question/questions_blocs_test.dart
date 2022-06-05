import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/application/question/question_detail/question_detail_bloc.dart';
import 'package:qelem/application/question/question_detail/question_detail_event.dart';
import 'package:qelem/application/question/question_detail/question_detail_state.dart';
import 'package:qelem/application/question/questions_list/questions_list_bloc.dart';
import 'package:qelem/application/question/questions_list/questions_list_event.dart';
import 'package:qelem/application/question/questions_list/questions_list_state.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/infrastructure/question/question_repository.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

import 'questions_tests_util.dart';
import 'questions_blocs_test.mocks.dart';

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

  group("QuestionDetailBloc", () {
    test(
        "should emit [QuestionDetailStateLoading, QuestionDetailStateLoadedQuestion] when event QuestionDetailLoadEvent is called and no error occur",
        () async {
      when(mockQuestionRepository.getQuestionById(mockQuestion.id))
          .thenAnswer((_) async => Either(val: mockQuestion));

      final questionDetailBloc =
          QuestionDetailBloc(questionRepository: mockQuestionRepository);

      questionDetailBloc.add(QuestionDetailLoadEvent(mockQuestion.id));

      final expected = [
        const QuestionDetailStateLoading(),
        QuestionDetailStateLoadedQuestion(mockQuestion),
      ];

      expectLater(questionDetailBloc.stream, emitsInOrder(expected));
    });

    test(
        "should emit [QuestionDetailStateLoading, QuestionDetailStateError] when event QuestionDetailLoadEvent is called and an error occurs",
        () async {
      when(mockQuestionRepository.getQuestionById(6))
          .thenAnswer((_) async => Either(error: Error('error')));

      final questionDetailBloc =
          QuestionDetailBloc(questionRepository: mockQuestionRepository);

      questionDetailBloc.add(const QuestionDetailLoadEvent(6));

      final expected = [
        const QuestionDetailStateLoading(),
        QuestionDetailStateError(Error('error')),
      ];
      expectLater(questionDetailBloc.stream, emitsInOrder(expected));
    });

    test(
        "should emit [QuestionDetailStateLoading, QuestionDetailStateDeleteSuccess] when event QuestionDetailDeleteEvent is called and no error occur",
        () async {
      when(mockQuestionRepository.deleteQuestion(6))
          .thenAnswer((_) async => Either(val: true));

      final questionDetailBloc =
          QuestionDetailBloc(questionRepository: mockQuestionRepository);

      questionDetailBloc.add(const QuestionDetailDeleteEvent(6));

      final expected = [
        const QuestionDetailStateLoading(),
        const QuestionDetailStateDeleteSuccess(),
      ];

      expectLater(questionDetailBloc.stream, emitsInOrder(expected));
    });

    test(
        "should emit [QuestionDetailStateLoading, QuestionDetailStateError] when event QuestionDetailDeleteEvent is called and an error occurs",
        () async {
      when(mockQuestionRepository.deleteQuestion(6))
          .thenAnswer((_) async => Either(error: Error('error')));

      final questionDetailBloc =
          QuestionDetailBloc(questionRepository: mockQuestionRepository);

      questionDetailBloc.add(const QuestionDetailDeleteEvent(6));

      final expected = [
        const QuestionDetailStateLoading(),
        QuestionDetailStateError(Error('error')),
      ];

      expectLater(questionDetailBloc.stream, emitsInOrder(expected));
    });

    test(
        "should emit [QuestionDetailStateLoadedQuestion] when event VoteQuestionEvent is called and no error occurs",
        () async {
      when(mockQuestionRepository.getQuestionById(mockQuestion.id))
          .thenAnswer((_) async => Either(val: mockQuestion));
      when(mockQuestionRepository.voteQuestion(mockQuestion.id, Vote.upVote))
          .thenAnswer((_) async => Either(val: mockQuestion));

      final questionDetailBloc =
          QuestionDetailBloc(questionRepository: mockQuestionRepository);

      questionDetailBloc.add(VoteQuestionEvent(mockQuestion, Vote.upVote));

      final expected = [
        QuestionDetailStateLoadedQuestion(mockQuestion),
      ];

      expectLater(questionDetailBloc.stream, emitsInOrder(expected));
    });

    test(
        "should emit [QuestionDetailStateLoadedQuestion] when event VoteQuestionEvent is called and an error occurs",
        () async {
      when(mockQuestionRepository.getQuestionById(mockQuestion.id))
          .thenAnswer((_) async => Either(val: mockQuestion));
      when(mockQuestionRepository.voteQuestion(mockQuestion.id, Vote.upVote))
          .thenAnswer((_) async => Either(error: Error('error')));

      final questionDetailBloc =
          QuestionDetailBloc(questionRepository: mockQuestionRepository);

      questionDetailBloc.add(VoteQuestionEvent(mockQuestion, Vote.upVote));

      final expected = [
        QuestionDetailStateError(Error('error')),
      ];

      expectLater(questionDetailBloc.stream, emitsInOrder(expected));
    });
  });
}
