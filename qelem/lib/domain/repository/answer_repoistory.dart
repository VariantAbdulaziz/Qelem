import 'package:qelem/data/remote/api/answer_api.dart';
import 'package:qelem/data/remote/models/answer_model.dart';

class AnswerRepository {
  Future<Answer> getQuestion(int answerId) async {
    Answer answer = await AnswerApi.getQuestion(answerId);
    return answer;
  }

  Future<Answer> createAnswer({
    required content,
    required questionId,
    required author,
    required upVotes,
    required downVotes,
    required userVote,
    required createdAt,
  }) async {
    try {
      Answer answer = await AnswerApi.createAnswer(
        content: content,
        questionId: questionId,
        author: author,
        upVotes: upVotes,
        downVotes: downVotes,
        userVote: userVote,
        createdAt: createdAt,
      );
      return answer;
    } catch (exception) {
      rethrow;
    }
  }

  Future<Answer> updateAnswer(Answer answer) async {
    try {
      Answer updatedAnswer = await AnswerApi.updateAnswer(answer);
      return updatedAnswer;
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
}
