import 'package:qelem/domain/auth/user.dart';

class Question {
  int id;
  String topic;
  String content;
  User author;
  int upVotes;
  int downVotes;
  int userVote;

  Question({
    required this.id,
    required this.topic,
    required this.content,
    required this.author,
    required this.upVotes,
    required this.downVotes,
    required this.userVote,
  });
}
