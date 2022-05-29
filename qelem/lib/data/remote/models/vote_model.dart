import 'dart:convert';

import 'package:qelem/data/remote/models/user_model.dart';
import 'package:qelem/data/remote/models/answer_model.dart';

String voteModelToJson(VoteModel voteModel) => json.encode(voteModel.toJson());

class VoteModel {
  AnswerModel answerModel;
  int? upVote;
  int? downVote;
  UserModel userModel;

  VoteModel(
      {required this.answerModel,
      this.downVote,
      this.upVote,
      required this.userModel});

  factory VoteModel.fromJson(Map<String, dynamic> json) => VoteModel(
      answerModel: json["answerModel"],
      userModel: json["userModel"],
      downVote: json["downVote"],
      upVote: json["upVote"]);

  Map<String, dynamic> toJson() => {
        "answerModel": answerModel,
        "userModel": userModel,
        "upVote": upVote,
        "downVote": downVote,
      };
}
