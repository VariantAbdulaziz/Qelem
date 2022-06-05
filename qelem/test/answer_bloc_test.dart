import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/application/answer/answer_bloc.dart';
import 'package:qelem/application/answer/answer_event.dart';
import 'package:qelem/application/answer/answer_state.dart';
import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/domain/answer/answer_form.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/infrastructure/answer/answer_repoistory.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

import 'answer_bloc_test.mocks.dart';

@GenerateMocks([AnswerRepository, User, Answer, AnswerForm])
void main() {
  late MockAnswerRepository mockAnswerRepository;
  late MockAnswer mockAnswer;
  late MockAnswerForm mockAnswerForm;

  setUp(() {
    mockAnswerRepository = MockAnswerRepository();
    mockAnswer = MockAnswer();
    mockAnswerForm = MockAnswerForm();
  });

  group("AnswerBloc", () {
    test(
        "should emit [AnswerState.loading, AnswerState.loadedAnswer] when Loading Answer is successful",
        () async {
      when(mockAnswerRepository.getAnswersByQuestionId(1))
          .thenAnswer((_) async => Either(val: <Answer>[]));

      final answerBloc = AnswerBloc(answerRepository: mockAnswerRepository);
      answerBloc.add(const LoadAnswersAnswerEvent(1));

      expectLater(
          answerBloc.stream,
          emitsInOrder([
            const AnswerState.loading(),
            const AnswerState.loadedAnswers(<Answer>[]),
          ]));
    });

    test("should emit [AnswerState.loading, AnswerStateError] when Loading Answer is unsuccessful",
        () async {
      when(mockAnswerRepository.getAnswersByQuestionId(1))
          .thenAnswer((_) async => Either(error: Error("error")));

      final answerBloc = AnswerBloc(answerRepository: mockAnswerRepository);
      answerBloc.add(const LoadAnswersAnswerEvent(1));

      expectLater(
          answerBloc.stream,
          emitsInOrder([
            const AnswerState.loading(),
            AnswerStateError(Error("error")),
          ]));
    });

    test("should emit [AnswerState.loadedAnswer] when ReLoading Answer is successful", () async {
      when(mockAnswerRepository.getAnswersByQuestionId(1))
          .thenAnswer((_) async => Either(val: <Answer>[]));

      final answerBloc = AnswerBloc(answerRepository: mockAnswerRepository);
      answerBloc.add(const ReloadAnswersAnswerEvent(1));

      expectLater(
          answerBloc.stream,
          emitsInOrder([
            const AnswerState.loadedAnswers(<Answer>[]),
          ]));
    });

    test("should emit [AnswerStateError] when ReLoading Answer is unsuccessful", () async {
      when(mockAnswerRepository.getAnswersByQuestionId(1))
          .thenAnswer((_) async => Either(error: Error("error")));

      final answerBloc = AnswerBloc(answerRepository: mockAnswerRepository);
      answerBloc.add(const ReloadAnswersAnswerEvent(1));

      expectLater(
          answerBloc.stream,
          emitsInOrder([
            AnswerStateError(Error("error")),
          ]));
    });

    test(
        "should emit [AnswerState.loading, AnswerState.success, AnswerState.loadedAnswers] when Adding Answer is successful",
        () async {
      when(mockAnswerRepository.createAnswer(answerForm: mockAnswerForm))
          .thenAnswer((_) async => Either(val: mockAnswer));
      when(mockAnswerRepository.getAnswersByQuestionId(1))
          .thenAnswer((_) async => Either(val: <Answer>[]));
      when(mockAnswerForm.questionId).thenReturn(1);

      final answerBloc = AnswerBloc(answerRepository: mockAnswerRepository);
      answerBloc.add(AddAnswerEvent(mockAnswerForm));

      expectLater(
          answerBloc.stream,
          emitsInOrder([
            const AnswerState.loading(),
            const AnswerState.success("Answer added successfully"),
            const AnswerState.loadedAnswers(<Answer>[]),
          ]));
    });

    test("should emit [AnswerState.loading, AnswerStateError] when Adding Answer is unsuccessful",
        () async {
      when(mockAnswerRepository.createAnswer(answerForm: mockAnswerForm))
          .thenAnswer((_) async => Either(error: Error("error")));
      when(mockAnswerRepository.getAnswersByQuestionId(1))
          .thenAnswer((_) async => Either(val: <Answer>[]));
      when(mockAnswerForm.questionId).thenReturn(1);

      final answerBloc = AnswerBloc(answerRepository: mockAnswerRepository);
      answerBloc.add(AddAnswerEvent(mockAnswerForm));

      expectLater(
          answerBloc.stream,
          emitsInOrder([
            const AnswerState.loading(),
            AnswerStateError(Error("error")),
          ]));
    });

    test(
        "should emit [AnswerState.success, AnswerState.loadedAnswers] when Deleting Answer is successful",
            () async {
          when(mockAnswerRepository.deleteAnswer(1))
              .thenAnswer((_) async => Either());
          when(mockAnswerRepository.getAnswersByQuestionId(1))
              .thenAnswer((_) async => Either(val: <Answer>[]));
          when(mockAnswer.questionId).thenReturn(1);
          when(mockAnswer.id).thenReturn(1);


          final answerBloc = AnswerBloc(answerRepository: mockAnswerRepository);
          answerBloc.add(DeleteAnswerEvent(mockAnswer));

          expectLater(
              answerBloc.stream,
              emitsInOrder([
                const AnswerState.success("Answer deleted successfully"),
                const AnswerState.loadedAnswers(<Answer>[]),
              ]));
        });

    test(
        "should emit [AnswerStateError] when Deleting Answer is unsuccessful",
            () async {
          when(mockAnswerRepository.deleteAnswer(1))
              .thenAnswer((_) async => Either(error: Error("error")));
          when(mockAnswer.questionId).thenReturn(1);
          when(mockAnswer.id).thenReturn(1);


          final answerBloc = AnswerBloc(answerRepository: mockAnswerRepository);
          answerBloc.add(DeleteAnswerEvent(mockAnswer));

          expectLater(
              answerBloc.stream,
              emitsInOrder([
                AnswerStateError(Error("error")),
              ]));
        });

    test(
        "should emit [AnswerState.loadedAnswers] when Voting is successful",
            () async {
              when(mockAnswerRepository.voteAnswer(1, Vote.upVote))
                  .thenAnswer((_) async => Either());
              when(mockAnswerRepository.getAnswersByQuestionId(1))
                  .thenAnswer((_) async => Either(val: <Answer>[]));
              when(mockAnswer.questionId).thenReturn(1);
              when(mockAnswer.id).thenReturn(1);


          final answerBloc = AnswerBloc(answerRepository: mockAnswerRepository);
          answerBloc.add(VoteAnswerEvent(mockAnswer, Vote.upVote));

          expectLater(
              answerBloc.stream,
              emitsInOrder([
                const AnswerState.loadedAnswers(<Answer>[]),
              ]));
        });

    test(
        "should emit [AnswerState.loadedAnswers] when Voting unsuccessful",
            () async {
          when(mockAnswerRepository.voteAnswer(1, Vote.upVote))
              .thenAnswer((_) async => Either(error: Error("error")));
          when(mockAnswer.questionId).thenReturn(1);
          when(mockAnswer.id).thenReturn(1);


          final answerBloc = AnswerBloc(answerRepository: mockAnswerRepository);
          answerBloc.add(VoteAnswerEvent(mockAnswer, Vote.upVote));

          expectLater(
              answerBloc.stream,
              emitsInOrder([
                AnswerStateError(Error("error")),
              ]));
        });

    test("should emit [AnswerState.success, AnswerState.loadedAnswers] when Updating Answer is successful", () async {
      when(mockAnswerRepository.updateAnswer(mockAnswer))
          .thenAnswer((_) async => Either(val: mockAnswer));
      when(mockAnswerRepository.getAnswersByQuestionId(1))
          .thenAnswer((_) async => Either(val: <Answer>[]));
      when(mockAnswer.questionId).thenReturn(1);

      final answerBloc = AnswerBloc(answerRepository: mockAnswerRepository);
      answerBloc.add(UpdateAnswerEvent(mockAnswer));

      expectLater(
          answerBloc.stream,
          emitsInOrder([
            const AnswerState.success("Answer updated successfully"),
            const AnswerState.loadedAnswers(<Answer>[]),
          ]));
    });

    test("should emit [AnswerStateError] when Updating Answer is unsuccessful", () async {
      when(mockAnswerRepository.updateAnswer(mockAnswer))
          .thenAnswer((_) async => Either(error: Error("error")));

      final answerBloc = AnswerBloc(answerRepository: mockAnswerRepository);
      answerBloc.add(UpdateAnswerEvent(mockAnswer));

      expectLater(
          answerBloc.stream,
          emitsInOrder([
            AnswerStateError(Error("error")),
          ]));
    });
  });
}
