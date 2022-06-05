import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/domain/answer/answer_form.dart';
import 'package:qelem/domain/answer/answer_repository_interface.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/auth/user_role.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/util/either.dart';

import 'answer_repo_test.mocks.dart';

@GenerateMocks([AnswerRepositoryInterface])
void main() {
  late MockAnswerRepositoryInterface mockAnswerRepository;
  late List<Answer> mockAnswers;

  setUp(() {
    mockAnswerRepository = MockAnswerRepositoryInterface();
    mockAnswers = [
      Answer(
          id: 12,
          content: 'content',
          questionId: 1,
          author: User(
              id: 12,
              userName: 'userName',
              firstName: 'firstName',
              lastName: 'lastName',
              profilePicture: 'profilePicture',
              role: Role.member),
          upVotes: 14,
          downVotes: 2,
          userVote: Vote.none,
          createdAt: DateTime(2017, 9, 7, 17, 30),
          updatedAt: DateTime(2017, 9, 7, 17, 30)),
      Answer(
          id: 13,
          content: 'content',
          questionId: 1,
          author: User(
              id: 12,
              userName: 'userName',
              firstName: 'firstName',
              lastName: 'lastName',
              profilePicture: 'profilePicture',
              role: Role.member),
          upVotes: 14,
          downVotes: 2,
          userVote: Vote.none,
          createdAt: DateTime(2017, 9, 7, 17, 30),
          updatedAt: DateTime(2017, 9, 7, 17, 30)),
    ];
  });

  group('Answer repo tests', () {
    test('test get answers', () async {
      when(mockAnswerRepository.getAllAnswers())
          .thenAnswer((_) async => Either(val: mockAnswers));

      final result = await mockAnswerRepository.getAllAnswers();

      expect(result, isA<Either<List<Answer>>>());
      expect(result.val, mockAnswers);
    });

    test('test get answer by id', () async {
      final mockAnswer = mockAnswers[0];

      when(mockAnswerRepository.getAnswerById(1))
          .thenAnswer((_) async => Either(val: mockAnswer));

      final result = await mockAnswerRepository.getAnswerById(1);

      expect(result, isA<Either<Answer>>());
      expect(result.val, mockAnswer);
    });

    test('test create answer', () async {
      final mockAnswer = mockAnswers[0];
      const mockAnswerForm = AnswerForm(questionId: 2, content: 'content');

      when(mockAnswerRepository.createAnswer(answerForm: mockAnswerForm))
          .thenAnswer((_) async => Either(val: mockAnswer));

      final result =
          await mockAnswerRepository.createAnswer(answerForm: mockAnswerForm);

      expect(result, isA<Either<Answer>>());
      expect(result.val, mockAnswer);
    });
  });
}
