import '../../../../domain/answer/answer.dart';
import '../../../../domain/auth/user.dart';
import '../../../../domain/common/vote.dart';
import 'answer_entity.dart';

extension AnswerEntityMapper on AnswerEntity {
  Answer toAnswer(User user) {
    final userVote = this.userVote == 0
        ? Vote.none
        : this.userVote > 0
            ? Vote.upVote
            : Vote.downVote;

    return Answer(
      id: id,
      content: content,
      questionId: questionId,
      author: user,
      upVotes: upVotes,
      downVotes: downVotes,
      userVote: userVote,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
