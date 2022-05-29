import 'dart:convert';

import 'package:qelem/data/remote/models/user_model.dart';
import 'package:qelem/data/remote/models/questio_model.dart';
import 'package:qelem/data/remote/models/vote_model.dart';

AnswerModel answerModel(String str) => AnswerModel.fromJson(json.decode(str));

String answerModelToJson(AnswerModel answerModel) =>
    json.encode(answerModel.toString());

class AnswerModel {
  QuestionModel questionModel;
  String content;
  UserModel userModel;
  List<VoteModel>? vote;

  AnswerModel(
      {required this.questionModel,
      required this.content,
      required this.userModel,
      this.vote});
  factory AnswerModel.fromJson(Map<String, dynamic> json) => AnswerModel(
      questionModel: json["questionModel"],
      content: json["content"],
      userModel: json["user"],
      vote: json["vote"]);

  Map<String, dynamic> toJson() => {
        "questionModel": questionModel,
        "content": content,
        "user": userModel,
        "vote": vote,
      };
}
