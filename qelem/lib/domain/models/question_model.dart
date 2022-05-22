import 'dart:convert';

import 'package:qelem/domain/models/UserModel.dart';
import 'package:qelem/domain/models/AnswerModel.dart';

question_model question_modelJson(String str) =>
    question_model.fromJson(json.decode(str));

String question_modelToJson(question_model question_model) =>
    json.encode(question_model.toString());

class question_model {
  String topic;
  String content;
  UserModel userModel;
  String status;
  List<AnswerModel>? answer;

  question_model(
      {required this.topic,
      required this.content,
      required this.userModel,
      this.status = "UNANSWERED",
      //TagModels tags;
      this.answer});

  factory question_model.fromJson(Map<String, dynamic> json) => question_model(
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
