import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../infrastructure/question/question_repository.dart';

import 'question_detail_event.dart';
import 'question_detail_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final QuestionRepository questionRepository;

  QuestionBloc({required this.questionRepository})
      : super(const QuestionState.loading()) {
    () {
      emit(const QuestionState.loading());
    }();

    on<QuestionLoadEvent>(
      ((event, emit) async {
        final question =
            await questionRepository.getQuestionById(event.questionId);
        emit(const QuestionState.loading());

        if (question.hasError) {
          emit(QuestionState.error(question.error!));
        } else {
          emit(QuestionState.loaded(question.val!));
        }
      }),
    );

    on<QuestionDeleteEvent>(
      ((event, emit) async {
        final question =
            await questionRepository.deleteQuestion(event.questionId);
        emit(const QuestionState.loading());

        if (question.hasError) {
          emit(QuestionState.error(question.error!));
        } else {
          emit(QuestionState.rollBack());
        }
      }),
    );

    on<QuestionDownVoteEvent>((event, emit) async {
      final question =
          await questionRepository.downVoteQuestion(event.question);

      if (question.hasError) {
        emit(QuestionState.error(question.error!));
      } else {
        emit(QuestionState.downVoted(question.val!));
      }
    });

    on<QuestionUpVoteEvent>((event, emit) async {
      final question = await questionRepository.upvoteQuestion(event.question);

      if (question.hasError) {
        emit(QuestionState.error(question.error!));
      } else {
        emit(QuestionState.upVoted(question.val!));
      }
    });
  }
}