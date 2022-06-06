import '../../infrastructure/answer/local/answer/answer_entity.dart';
import '../common/vote.dart';
import 'answer.dart';

extension AnswerMapper on Answer {
  AnswerEntity  toAnswerEntity() {
    return AnswerEntity(
      id: id,
      content: content,
      questionId: questionId,
      authorId: author.id,
      upVotes: upVotes,
      downVotes: downVotes,
      userVote: userVote == Vote.none ? 0 : userVote == Vote.upVote ? 1 : -1,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}