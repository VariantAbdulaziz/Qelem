import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/domain/question/question.dart';
import 'package:qelem/infrastructure/auth/user_model_mapper.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';
import 'package:qelem/infrastructure/tag/tag_mapper.dart';

import '../../domain/auth/user.dart';
import 'local/question/question_entity.dart';

extension QuestionMapper on QuestionDto {
  Question toQuestion() {
    Vote vote;
    if (userVote == 1) {
      vote = Vote.upVote;
    } else if (userVote == -1) {
      vote = Vote.downVote;
    } else {
      vote = Vote.none;
    }
    return Question(
      id: id,
      topic: topic,
      content: content,
      author: author.toUser(),
      upVotes: upVotes,
      downVotes: downVotes,
      userVote: vote,
      createdAt: createdAt,
      updatedAt: updatedAt,
      tags: tags.map((tag) => tag.toTag()).toList(),
    );
  }

  QuestionEntity toQuestionEntity() {
    return QuestionEntity(
      id: id,
      topic: topic,
      content: content,
      authorId: author.id,
      upVotes: upVotes,
      downVotes: downVotes,
      userVote: userVote,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Question fromQuestionEntity(QuestionEntity questionEntity, User user) {
    final userVote = this.userVote == 0
        ? Vote.none
        : this.userVote > 0
            ? Vote.upVote
            : Vote.downVote;

    return Question(
      id: questionEntity.id,
      content: questionEntity.content,
      author: user,
      upVotes: questionEntity.upVotes,
      downVotes: questionEntity.downVotes,
      userVote: userVote,
      createdAt: questionEntity.createdAt,
      updatedAt: questionEntity.updatedAt,
      topic: questionEntity.topic,
      tags: [],
    );
  }
}
