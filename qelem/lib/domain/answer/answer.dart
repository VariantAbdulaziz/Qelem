import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/infrastructure/common/vote.dart';

class Answer {
  int id;
  String content;
  int questionId;
  User author;
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
