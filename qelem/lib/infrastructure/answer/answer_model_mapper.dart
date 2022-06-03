import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/infrastructure/answer/answer_dto.dart';
import 'package:qelem/infrastructure/auth/user_model_mapper.dart';

extension AnswerMapper on AnswerDto {
  Answer toAnswer() {
    final userVote = this.userVote == 0
        ? Vote.none
        : this.userVote > 0
            ? Vote.upVote
            : Vote.downVote;

    return Answer(
      id: id,
      content: content,
      questionId: questionId,
      author: author.toUser(),
      upVotes: upVotes,
      downVotes: downVotes,
      userVote: userVote,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
