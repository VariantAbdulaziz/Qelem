import 'package:qelem/infrastructure/auth/user_dto.dart';

class Answer {
  final int id;
  final String content;
  final int questionId;
  final UserDto author;
  final int upVotes;
  final int downVotes;
  final int userVote;
  final String createdAt;
  final String updatedAt;

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
