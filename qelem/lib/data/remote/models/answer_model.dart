import 'dart:convert';

import 'package:qelem/data/remote/models/user_model.dart';
import 'package:qelem/data/remote/models/question_model.dart';
import 'package:qelem/data/remote/models/vote_model.dart';

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
}
