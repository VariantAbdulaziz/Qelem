import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/domain/question/question.dart';
import 'package:qelem/domain/question/question_form.dart';
import 'package:qelem/util/either.dart';

abstract class QuestionRepositoryInterface {
  Future<Either<List<Question>>> getMyQuestions();

  Future<Either<List<Question>>> getAllQuestions();

  Future<Either<Question>> getQuestionById(int id);

  Future<Either<Question>> createQuestion(QuestionForm questionForm);

  Future<Either<void>> deleteQuestion(int id);

  Future<Either<Question>> updateQuestion(
      QuestionForm questionForm, int questionId);

  Future<Either<Question>> voteQuestion(int questionId, Vote vote);
}
