import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/auth/user.dart';
import '../../../domain/common/vote.dart';
import '../../../domain/question/question.dart';
import '../../../infrastructure/question/question_repository.dart';

import '../../../util/either.dart';
import 'questions_list_event.dart';
import 'questions_list_state.dart';

class QuestionsListBloc extends Bloc<QuestionsListEvent, QuestionsListState> {
  final QuestionRepository questionRepository;
  // final fakeRepo questionRepository;

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
          // ignore: curly_braces_in_flow_control_structures
        } else {
          if (!(questions.val?.isEmpty)!) {
            emit(QuestionsListState.success(questions.val!, event.offset));
          }
        }
      }),
    );
  }
}

class fakeRepo {
  List<Question> questions = List.generate(100, (index) {
    return Question(
        id: index,
        topic: 'topic $index',
        content: 'content $index',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
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
      return Either(
          val: questions.sublist(
              0, questions.length)); // but for testing, it should be appended
    }
    return Either(val: <Question>[]);
  }
}
