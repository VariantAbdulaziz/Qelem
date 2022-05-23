import 'dart:convert';

import 'package:qelem/data/remote/models/user_model.dart';
import 'package:qelem/data/remote/models/answer_model.dart';

QuestionModel questionModelJson(String str) =>
    QuestionModel.fromJson(json.decode(str));

String questionModelToJson(QuestionModel questionModel) =>
    json.encode(questionModel.toString());

class QuestionModel {
  String topic;
  String content;
  UserModel userModel;
  String status;
  List<AnswerModel>? answer;

  QuestionModel(
      {required this.topic,
      required this.content,
      required this.userModel,
      this.status = "UNANSWERED",
      //TagModels tags;
      this.answer});

  factory QuestionModel.fromJson(Map<String, dynamic> json) => QuestionModel(
      topic: json["topic"],
      content: json["content"],
      userModel: json["user"],
      status: json["status"],
      answer: json["answer"]);

  Map<String, dynamic> toJson() => {
        "topic": topic,
        "content": content,
        "user": userModel,
        "status": status,
        "answer": answer
      };
}
