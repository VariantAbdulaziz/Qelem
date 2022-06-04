import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/application/question/questions_list/questions_list_bloc.dart';
import 'package:qelem/application/question/questions_list/questions_list_event.dart';
import 'package:qelem/application/question/questions_list/questions_list_state.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/domain/question/question.dart';
import 'package:qelem/infrastructure/question/question_repository.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

import 'questions_list_bloc_test.mocks.dart';

@GenerateMocks([QuestionRepository])
void main() {
  late MockQuestionRepository mockQuestionRepository;

  setUp(() {
    mockQuestionRepository = MockQuestionRepository();
  });

  group("QuestionsListsBloc", () {
    test(
        "should emit [QuestionListStateLoading, QuestionListStateSuccess] when event QuestionsListEventLoad is called and no error occured",
        () async {
      final mockQuestions = List.generate(3, (index) {
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
          userVote: Vote.upVote,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );
      });

      when(mockQuestionRepository.getMyQuestions())
          .thenAnswer((_) async => Either(val: mockQuestions));

      final questionsListBloc =
          QuestionsListBloc(questionRepository: mockQuestionRepository);

      questionsListBloc.add(const QuestionsListEventLoad());

      final expected = [
        const QuestionsListStateLoading(),
        QuestionsListStateSuccess(mockQuestions),
      ];

      expectLater(questionsListBloc.stream, emitsInOrder(expected));
    });

    test(
        "should emit [QuestionListStateLoading, QuestionListStateError] when event QuestionsListEventLoad is called and an error occured",
        () async {
      when(mockQuestionRepository.getMyQuestions())
          .thenAnswer((_) async => Either(error: Error('error')));

      final questionsListBloc =
          QuestionsListBloc(questionRepository: mockQuestionRepository);

      questionsListBloc.add(const QuestionsListEventLoad());

      final expected = [
        const QuestionsListStateLoading(),
        QuestionsListStateError(Error('error')),
      ];
      expectLater(questionsListBloc.stream, emitsInOrder(expected));
    });
  });
}
