import 'package:qelem/infrastructure/question/local/question/question_entity.dart';
import 'package:qelem/infrastructure/tag/tag_dto.dart';
import 'package:qelem/infrastructure/tag/tag_mapper.dart';

import '../../../../domain/auth/user.dart';
import '../../../../domain/common/vote.dart';
import '../../../../domain/question/question.dart';

extension QuestionEntityMapper on QuestionEntity {
  Question toQuestion(User user, List<TagDto> tags) {
    final userVote = this.userVote == 0
        ? Vote.none
        : this.userVote > 0
            ? Vote.upVote
            : Vote.downVote;

    return Question(
      id: id,
      content: content,
      author: user,
      upVotes: upVotes,
      downVotes: downVotes,
      userVote: userVote,
      createdAt: createdAt,
      updatedAt: updatedAt,
      topic: topic,
      tags: tags.map((tag) => tag.toTag()).toList(),
    );
  }
}
