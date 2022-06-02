import 'package:qelem/infrastructure/auth/user_dto.dart';
import 'package:qelem/infrastructure/common/vote.dart';

class Answer {
  int id;
  String content;
  int questionId;
  UserDto author;
  int upVotes;
  int downVotes;
  Vote userVote;
  String createdAt;
  String updatedAt;

  Answer(
      {required this.id,
      required this.content,
      required this.questionId,
      required this.author,
      required this.upVotes,
      required this.downVotes,
      required this.userVote,
      required this.createdAt,
      required this.updatedAt});
}
