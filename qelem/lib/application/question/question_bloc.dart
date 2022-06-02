import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:qelem/infrastructure/question/question_repository.dart';
import 'package:qelem/util/either.dart';

import '../../common/Vote.dart';
import '../../domain/auth/user.dart';
import '../../domain/question/question.dart';

part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final QuestionRepository questionRepository;
  QuestionBloc({required this.questionRepository}) : super(QuestionState()) {
    on<QuestionEventFetch>(_onQuestionFetched);
  }
  fakeRepo repo = fakeRepo();
  Future<void> _onQuestionFetched(
      QuestionEventFetch event, Emitter<QuestionState> emit) async {
    if (state.reachedEnd) {
      emit(state);
      return;
    }

    try {

      if (state.status == QuestionStateStatus.initial) {
        // final questions = await questionRepository.getQuestion(); // todo: pagination
        final questions = await repo.getQuestion(0);
        if (questions.error != null) {
          emit(state.copyWith(
              status:
                  QuestionStateStatus.error)); // todo: what happens on error
        } else {
          emit(state.copyWith(
              status: QuestionStateStatus.loaded, questions: questions.val));
        }
      }

      final questions = await repo
          .getQuestion(state.questions.length);

      if (questions.error != null) {
        emit(state.copyWith(
            status: QuestionStateStatus.error)); // todo: what happens on error
      } else {
        questions.val!.isEmpty
            ? emit(state.copyWith(
                status: QuestionStateStatus.loaded,
                questions: state.questions,
                reachedEnd: true))
            : emit(state.copyWith(
                status: QuestionStateStatus.loaded, questions: questions.val));
      }

    } catch (e) {
      emit(state.copyWith(status: QuestionStateStatus.error));
    }
  }
}

class fakeRepo {
  List<Question> questions = List.generate(100, (index) {
    return Question(
        id: index,
        topic: 'topic $index',
        content: 'content $index',
        author: User(
          id: index,
          firstName: 'name $index',
          lastName: 'email $index',
          userName: 'avatar $index',
          profilePicture: 'assets/abebe.jpeg',
        ),
        upVotes: index,
        downVotes: index,
        userVote: Vote.upVote);
  });
  bool endReached = false;

  Future<Either<List<Question>>> getQuestion(int start) async {
    await Future.delayed(Duration(seconds: 3));
    if ((start + 20) < questions.length) {
      return Either(val: questions.sublist(0, start + 20));
    }
    if (!endReached) {
      endReached = true;
      return Either(val: questions.sublist(0, questions.length)); // but for testing, it should be appended
    }
    return Either(val: <Question>[]);
  }
}
