import 'package:qelem/infrastructure/answer/answer_api.dart';
import 'package:qelem/infrastructure/answer/answer_dto.dart';
import 'package:qelem/infrastructure/answer/answer_form_dto.dart';

class AnswerRepository {
  Future<AnswerDto> createAnswer({
    required content,
    required questionId,
  }) async {
    AnswerFormDto answerFormDto =
        AnswerFormDto(questionId: questionId, content: content);
    try {
      AnswerDto answer = await AnswerApi.createAnswer(answerFormDto);
      return answer;
    } catch (exception) {
      rethrow;
    }
  }

  Future<void> deleteAnswer(int answerId) async {
    try {
      await AnswerApi.deleteAnswer(answerId);
    } catch (exception) {
      rethrow;
    }
  }

  Future<AnswerDto> updateAnswer(
      AnswerFormDto answerFormDto, int answerId, String content) async {
    try {
      AnswerDto updatedAnswer =
          await AnswerApi.updateAnswer(answerFormDto, answerId, content);
      return updatedAnswer;
    } catch (exception) {
      rethrow;
    }
  }

  Future<void> upvoteAnswer(int answerId) async {
    try {
      await AnswerApi.upvoteAnswer(answerId);
    } catch (exception) {
      rethrow;
    }
  }

  Future<void> unvoteAnswer(int answerId) async {
    try {
      await AnswerApi.unvoteAnswer(answerId);
    } catch (exception) {
      rethrow;
    }
  }
}
