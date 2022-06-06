import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/answer/answer_event.dart';
import 'package:qelem/application/answer/answer_state.dart';
import 'package:qelem/domain/answer/answer_repository_interface.dart';
import 'package:qelem/domain/auth/auth_repository_interface.dart';

class AnswerBloc extends Bloc<AnswerEvent, AnswerState> {
  final AnswerRepositoryInterface answerRepository;
  final AuthRepositoryInterface authRepository;

  AnswerBloc({required this.answerRepository, required this.authRepository})
      : super(const AnswerStateInitial()) {
    // Load the answers
    on<LoadAnswersAnswerEvent>(
      (event, emit) async {
        emit(const AnswerState.loading());
        add(ReloadAnswersAnswerEvent(event.questionId));
      },
    );

    on<ReloadAnswersAnswerEvent>((event, emit) async {
      final answers =
          await answerRepository.getAnswersByQuestionId(event.questionId);

      if (answers.hasError) {
        emit(AnswerStateError(answers.error!));
      } else {
        emit(AnswerState.loadedAnswers(
            answers.val!, (await authRepository.getAuthenticatedUser())!.id));
      }
    });

    on<AddAnswerEvent>((event, emit) async {
      final answer =
          await answerRepository.createAnswer(answerForm: event.answerForm);

      if (answer.hasError) {
        emit(AnswerStateError(answer.error!));
      } else {
        emit(const AnswerStateSuccess("Answer added successfully"));
        add(ReloadAnswersAnswerEvent(event.answerForm.questionId));
      }
    });

    on<DeleteAnswerEvent>(
      (event, emit) async {
        final result = await answerRepository.deleteAnswer(event.answer.id);

        if (result.hasError) {
          emit(AnswerStateError(result.error!));
        } else {
          emit(const AnswerStateSuccess("Answer deleted successfully"));
          add(ReloadAnswersAnswerEvent(event.answer.questionId));
        }
      },
    );

    on<VoteAnswerEvent>((event, emit) async {
      final result =
          await answerRepository.voteAnswer(event.answer.id, event.vote);

      if (result.hasError) {
        emit(AnswerStateError(result.error!));
      } else {
        add(ReloadAnswersAnswerEvent(event.answer.questionId));
      }
    });

    on<UpdateAnswerEvent>((event, emit) async {
      final result = await answerRepository.updateAnswer(event.answer);

      if (result.hasError) {
        emit(AnswerStateError(result.error!));
      } else {
        emit(const AnswerStateSuccess("Answer updated successfully"));
        add(ReloadAnswersAnswerEvent(event.answer.questionId));
      }
    });
  }
}
