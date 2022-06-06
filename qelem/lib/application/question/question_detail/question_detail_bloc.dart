import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/domain/auth/auth_repository_interface.dart';
import 'package:qelem/domain/question/question_repository_interface.dart';

import 'question_detail_event.dart';
import 'question_detail_state.dart';

class QuestionDetailBloc
    extends Bloc<QuestionDetailEvent, QuestionDetailState> {
  final QuestionRepositoryInterface questionRepository;
  final AuthRepositoryInterface authRepository;

  QuestionDetailBloc(
      {required this.questionRepository, required this.authRepository})
      : super(const QuestionDetailStateInitial()) {
    // Load the question
    on<QuestionDetailLoadEvent>(
      ((event, emit) async {
        emit(const QuestionDetailStateLoading());
        add(QuestionDetailReloadEvent(event.questionId));
      }),
    );

    // Reload the question
    on<QuestionDetailReloadEvent>(
      ((event, emit) async {
        final question =
            await questionRepository.getQuestionById(event.questionId);

        if (question.hasError) {
          emit(QuestionDetailStateError(question.error!));
        } else {
          emit(QuestionDetailStateLoadedQuestion(question.val!,
              (await authRepository.getAuthenticatedUser())!.id));
        }
      }),
    );

    on<QuestionDetailDeleteEvent>(((event, emit) async {
      emit(const QuestionDetailStateLoading());
      final question =
          await questionRepository.deleteQuestion(event.questionId);

      if (question.hasError) {
        emit(QuestionDetailStateError(question.error!));
      } else {
        emit(const QuestionDetailStateDeleteSuccess());
      }
    }));

    on<VoteQuestionEvent>((event, emit) async {
      final result =
          await questionRepository.voteQuestion(event.question.id, event.vote);

      if (result.hasError) {
        emit(QuestionDetailStateError(result.error!));
      } else {
        add(QuestionDetailReloadEvent(event.question.id));
      }
    });
  }
}
