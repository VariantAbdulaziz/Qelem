import 'package:qelem/infrastructure/auth/user_model_mapper.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';

import '../../domain/question/question.dart';

extension QuestionMapper on QuestionDto {

  Question toQuestion() {
    return Question(
      id: id,
      topic: topic,
      content: content,
      author: author.toUser(),
      upVotes: upVotes,
      downVotes: downVotes,
      userVote: userVote,
    );
  }
}