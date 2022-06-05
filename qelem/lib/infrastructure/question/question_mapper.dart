import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/domain/question/question.dart';
import 'package:qelem/infrastructure/auth/user_model_mapper.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';
import 'package:qelem/infrastructure/tag/tag_mapper.dart';

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
}
