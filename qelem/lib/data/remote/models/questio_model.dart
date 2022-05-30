import 'package:qelem/data/remote/models/user_model.dart';

class Question {
  int id;
  String topic;
  String content;
  User author;
  String createdAt;
  String updatedAt;
  int upVotes;
  int downVotes;
  int userVote;

  Question({
    required this.id,
    required this.topic,
    required this.content,
    required this.author,
    required this.createdAt,
    required this.updatedAt,
    required this.upVotes,
    required this.downVotes,
    required this.userVote,
  });

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        id: json['id'],
        topic: json['topic'],
        content: json['content'],
        author: User.fromJson(json['author']),
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        upVotes: json['upVotes'],
        downVotes: json['downVotes'],
        userVote: json['userVote'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'topic': topic,
        'content': content,
        'author': author.toJson(),
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'upVotes': upVotes,
        'downVotes': downVotes,
        'userVote': userVote,
      };
}
