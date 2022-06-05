import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/domain/answer/answer_form.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/util/either.dart';

abstract class AnswerRepositoryInterface {
  Future<Either<List<Answer>>> getAllAnswers();

  Future<Either<Answer>> getAnswerById(int answerId);

  Future<Either<Answer>> createAnswer({required AnswerForm answerForm});

  Future<Either<void>> deleteAnswer(int answerId);

  Future<Either<Answer>> updateAnswer(Answer answer);

  Future<Either<Answer>> voteAnswer(int answerId, Vote vote);

  Future<Either<List<Answer>>> getAnswersByQuestionId(int questionId);
}
