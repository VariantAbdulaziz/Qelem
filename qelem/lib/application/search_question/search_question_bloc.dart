import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qelem/application/search_question/search_queation_state.dart';
import 'package:qelem/application/search_question/search_question_event.dart';
import 'package:qelem/domain/question/question.dart';
import 'package:qelem/infrastructure/question/question_repository.dart';
import 'package:qelem/util/either.dart';

class SearchQuestionBloc
    extends Bloc<SearchQuestionEvent, SearchQuestionState> {
  final QuestionRepository questionRepository;
  String keyWord;
  SearchQuestionBloc(this.questionRepository, this.keyWord)
      : super(const SearchQuestionState.initial()) {
    on<SearchQuestionEventSearch>(((event, emit) async {
      emit(const SearchQuestionStateLoading());
      Either<List<Question>> result =
          await questionRepository.getAllQuestions();

      if (result.hasError) {
        emit(SearchQuestionStateFailure(result.error!));
      } else {
        List<Question> questions = [];
        result.val!.forEach((question) {
          if (question.topic.toLowerCase().contains(keyWord.toLowerCase()) ||
              question.content.toLowerCase().contains(keyWord.toLowerCase())) {
            questions.add(question);
          }
        });
        emit(SearchQuestionStateLoaded(questions));
      }
    }));
  }
}
