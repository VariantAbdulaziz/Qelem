import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/domain/question/question.dart';
import 'package:qelem/domain/question/question_form.dart';
import 'package:qelem/infrastructure/question/question_repository.dart';
import 'package:qelem/util/either.dart';

import 'question_repo_test.mocks.dart';

@GenerateMocks([QuestionRepository])
void main() {
  late MockQuestionRepository mockQuestionRepository;
  late List<Question> mockQuestions;

  setUp(() {
    mockQuestionRepository = MockQuestionRepository();
    mockQuestions = [
      Question(
          id: 1,
          topic: 'topic',
          content: 'content',
          author: User(
              id: 1,
              userName: 'uname',
              firstName: 'fname',
              lastName: 'lname',
              profilePicture: 'profilePic'),
          upVotes: 12,
          downVotes: 3,
          userVote: Vote.upVote,
          createdAt: DateTime(2017, 9, 7, 17, 30),
          updatedAt: DateTime(2017, 9, 7, 17, 30)),
      Question(
          id: 2,
          topic: 'topic2',
          content: 'content2',
          author: User(
              id: 1,
              userName: 'uname',
              firstName: 'fname',
              lastName: 'lname',
              profilePicture: 'profilePic'),
          upVotes: 22,
          downVotes: 13,
          userVote: Vote.upVote,
          createdAt: DateTime(2019, 6, 2, 17, 30),
          updatedAt: DateTime(2019, 6, 2, 17, 30)),
    ];
  });

  group('Question repo tests', () {
    test('test get questions', () async {
      when(mockQuestionRepository.getAllQuestions())
          .thenAnswer((_) async => Either(val: mockQuestions));

      final result = await mockQuestionRepository.getAllQuestions();

      expect(result, isA<Either<List<Question>>>());
      expect(result.val, mockQuestions);
    });

    test('test get question by id', () async {
      final mockQuestion = mockQuestions[0];

      when(mockQuestionRepository.getQuestionById(1))
          .thenAnswer((_) async => Either(val: mockQuestion));

      final result = await mockQuestionRepository.getQuestionById(1);

      expect(result, isA<Either<Question>>());
      expect(result.val, mockQuestion);
    });

    test('test create question', () async {
      final mockQuestion = mockQuestions[0];
      const mockQuestionForm = QuestionForm(topic: 'topic', content: 'content');

      when(mockQuestionRepository.createQuestion(mockQuestionForm))
          .thenAnswer((_) async => Either(val: mockQuestion));

      final result = await mockQuestionRepository.createQuestion(mockQuestionForm);

      expect(result, isA<Either<Question>>());
      expect(result.val, mockQuestion);
    });
  });
}
