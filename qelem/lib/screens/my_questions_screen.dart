import 'package:flutter/material.dart';
import 'package:qelem/data/remote/models/user_model.dart';

import '../data/remote/models/question_model.dart';
import '../widgets/question_card.dart';

Widget MyQuestionsScreen() {
  UserModel userModel = new UserModel(
      userName: "Emre",
      firstName: "Varol",
      lastName: "Emre",
      password: "Emre",
      profilePhoto: "profilePhoto");

  return ListView.builder(
    itemCount: 20,
    itemBuilder: (context, position) {
      return QuestionCard(QuestionModel(
          topic: "What is the best way to manage state in flutter",
          userModel: userModel,
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
          img: "assets/images/default_profile_picture.jpeg"));
    },
  );
}
