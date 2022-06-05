import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/application/question/question_detail/question_detail_bloc.dart';
import 'package:qelem/application/question/question_detail/question_detail_event.dart';
import 'package:qelem/application/question/question_detail/question_detail_state.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/infrastructure/question/question_repository.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

import 'question_detail_bloc_test.mocks.dart';
import 'questions_tests_util.dart';

@GenerateMocks([QuestionRepository])
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late MockQuestionRepository mockQuestionRepository;

  setUp(() {
    mockQuestionRepository = MockQuestionRepository();
  });

  group("QuestionDetailBloc", () {
    test(
        "should emit [QuestionDetailStateLoading, QuestionDetailStateLoadedQuestion] when event QuestionDetailLoadEvent is called and no error occur",
        () async {
      final mockQuestion = await getQuestion();

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
      final mockQuestion = await getQuestion();

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
      final mockQuestion = await getQuestion();

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
