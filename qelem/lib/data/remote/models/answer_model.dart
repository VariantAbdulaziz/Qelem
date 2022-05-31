import 'package:qelem/data/remote/models/user_model.dart';
<<<<<<< HEAD
import 'package:qelem/data/remote/models/question_model.dart';
import 'package:qelem/data/remote/models/vote_model.dart';

String answerModelToJson(AnswerModel answerModel) =>
    json.encode(answerModel.toString());

class AnswerModel {
  QuestionModel questionModel;
=======

class Answer {
  int id;
>>>>>>> 674e8f7987fe2b149cbf441990d69e97271ddfa2
  String content;
  int questionId;
  User author;
  int upVotes;
  int downVotes;
  int userVote;
  String createdAt;
  String updatedAt;

  Answer({
    required this.id,
    required this.content,
    required this.questionId,
    required this.author,
    required this.upVotes,
    required this.downVotes,
    required this.userVote,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(
        id: json['id'],
        content: json['content'],
        questionId: json['questionId'],
        author: User.fromJson(json['author']),
        upVotes: json['upVotes'],
        downVotes: json['downVotes'],
        userVote: json['userVote'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'content': content,
        'questionId': questionId,
        'author': author.toJson(),
        'upVotes': upVotes,
        'downVotes': downVotes,
        'userVote': userVote,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}
