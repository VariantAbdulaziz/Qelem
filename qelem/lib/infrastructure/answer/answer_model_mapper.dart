import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/infrastructure/answer/answer_dto.dart';

extension AnswerMapper on AnswerDto {
  Answer toAnswer() {
    return Answer(
        id: id,
        content: content,
        questionId: questionId,
        author: author,
        upVotes: upVotes,
        downVotes: downVotes,
        userVote: userVote,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }
}
