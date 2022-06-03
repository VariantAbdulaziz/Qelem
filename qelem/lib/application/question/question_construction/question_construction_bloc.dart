import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../infrastructure/question/question_repository.dart';

import 'question_construction_event.dart';
import 'question_construction_state.dart';

class QuestionContructionBloc
    extends Bloc<QuestionConstructionEvent, QuestionConstructionState> {
  final QuestionRepository questionRepository;

  QuestionContructionBloc({required this.questionRepository})
      : super(const QuestionConstructionState.empty()) {

    on<QuestionEventPost>(
      ((event, emit) async {
        emit(const QuestionStateLoading());
        var result = await questionRepository.createQuestion(event.form);
        if (result.hasError) {
          emit(QuestionStateError(result.error!));
        } else {
          emit(QuestionStateSuccess(result.val!));
        }
      }),
    );

    // on<QuestionConstructionUpdateEvent>(
    //   ((event, emit) async {
    //     emit(const QuestionConstructionState.loading());
    //     final question =
    //         await _questionRepository.getQuestionById(event.questionId);

    //     if (question.hasError) {
    //       emit(QuestionConstructionState.error(question.error!));
    //     } else {
    //       emit(QuestionConstructionState.update(question.val!));
    //     }
    //   }),
    // );
  }
}
