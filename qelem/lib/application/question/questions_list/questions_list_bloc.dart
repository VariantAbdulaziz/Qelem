import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/infrastructure/question/question_repository.dart';

import 'questions_list_event.dart';
import 'questions_list_state.dart';

class QuestionsListBloc extends Bloc<QuestionsListEvent, QuestionsListState> {
  final QuestionRepository questionRepository;

  QuestionsListBloc({required this.questionRepository})
      : super(const QuestionsListState.initial()) {
    () async {
      final questions = await questionRepository.getAllQuestions();

      if (questions.hasError) {
        emit(QuestionsListState.error(questions.error!));
      } else {
        emit(
          questions.val != null
              ? QuestionsListState.success(questions.val!, 0)
              : const QuestionsListState.empty(),
        );
      }
    }();

    on<QuestionsListRequestEvent>(
      ((event, emit) async {
        final questions = await questionRepository.getAllQuestions();

        if (questions.hasError) {
          emit(QuestionsListState.error(questions.error!));
        } else {
          emit(QuestionsListState.success(questions.val!, event.offset));
        }
      }),
    );
  }
}
