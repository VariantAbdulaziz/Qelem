import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/infrastructure/question/question_repository.dart';

import 'questions_list_event.dart';
import 'questions_list_state.dart';

class QuestionsListBloc extends Bloc<QuestionsListEvent, QuestionsListState> {
  final QuestionRepository questionRepository;

  QuestionsListBloc({required this.questionRepository})
      : super(const QuestionsListStateInitial()) {
    on<QuestionsListEventLoad>((event, emit) async {
      emit(const QuestionsListStateLoading());
      add(const QuestionsListEventRefresh());
    });

    on<QuestionsListEventRefresh>((event, emit) async {
      final questions = await questionRepository.getMyQuestions();

      if (questions.hasError) {
        emit(QuestionsListStateError(questions.error!));
      }

      emit(QuestionsListStateSuccess(questions.val!));
    });
  }
}
