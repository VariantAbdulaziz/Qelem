import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/infrastructure/answer/answer_dto.dart';
import 'package:qelem/infrastructure/auth/user_model_mapper.dart';

import '../../domain/auth/user.dart';
import 'local/answer/answer_entity.dart';

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

  AnswerEntity toAnswerEntity() {
    return AnswerEntity(
      id: id,
      content: content,
      questionId: questionId,
      authorId: author.id,
      upVotes: upVotes,
      downVotes: downVotes,
      userVote: userVote,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Answer fromAnswerEntity(AnswerEntity answerEntity, User user) {
    final userVote = this.userVote == 0
        ? Vote.none
        : this.userVote > 0
            ? Vote.upVote
            : Vote.downVote;

    return Answer(
      id: answerEntity.id,
      content: answerEntity.content,
      questionId: answerEntity.questionId,
      author: user,
      upVotes: answerEntity.upVotes,
      downVotes: answerEntity.downVotes,
      userVote: userVote,
      createdAt: answerEntity.createdAt,
      updatedAt: answerEntity.updatedAt,
    );
  }
}
