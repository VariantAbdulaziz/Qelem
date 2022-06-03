import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../infrastructure/question/question_repository.dart';

import 'question_construction_event.dart';
import 'question_construction_state.dart';

class QuestionContructionBloc
    extends Bloc<QuestionConstructionEvent, QuestionConstructionState> {
  final QuestionRepository questionRepository;

  QuestionContructionBloc({required this.questionRepository})
      : super(const QuestionConstructionState.empty()) {
    on<QuestionConstructionEmptyEvent>(
      ((event, emit) {
        emit(const QuestionConstructionState.empty());
      }),
    );

    on<QuestionConstructionUpdateEvent>(
      ((event, emit) async {
        emit(const QuestionConstructionState.loading());
        final question =
            await questionRepository.getQuestionById(event.questionId);

        if (question.hasError) {
          emit(QuestionConstructionState.error(question.error!));
        } else {
          emit(QuestionConstructionState.update(question.val!));
        }
      }),
    );
  }
}