import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/infrastructure/answer/answer_api.dart';
import 'package:qelem/infrastructure/answer/answer_dto.dart';
import 'package:qelem/infrastructure/answer/answer_form_dto.dart';
import 'package:qelem/infrastructure/answer/answer_model_mapper.dart';
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

class AnswerRepository {
  final AnswerApi answerApi;
  AnswerRepository(this.answerApi);

  Future<Either<Answer>> createAnswer(
      {required AnswerFormDto answerFormDto}) async {
    try {
      AnswerDto answer = await answerApi.createAnswer(answerFormDto);
      return Either(val: answer.toAnswer());
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    }
  }

  Future<void> deleteAnswer(int answerId) async {
    try {
      await answerApi.deleteAnswer(answerId);
    } on QHttpException catch (exception) {
      throw Either(error: Error(exception.message));
    }
  }

  Future<Either<AnswerDto>> updateAnswer(
      AnswerFormDto answerFormDto, int answerId, String content) async {
    try {
      AnswerDto updatedAnswer =
          await answerApi.updateAnswer(answerFormDto, answerId, content);
      return Either(val: updatedAnswer);
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    }
  }

  Future<void> upvoteAnswer(int answerId) async {
    try {
      await answerApi.upvoteAnswer(answerId);
    } catch (exception) {
      rethrow;
    }
  }

  Future<void> unvoteAnswer(int answerId) async {
    try {
      await answerApi.unvoteAnswer(answerId);
    } catch (exception) {
      rethrow;
    }
  }
}
