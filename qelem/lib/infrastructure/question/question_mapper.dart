import 'package:qelem/infrastructure/auth/user_model_mapper.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';

import '../../common/Vote.dart';
import '../../domain/question/question.dart';

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
    );
  }
}