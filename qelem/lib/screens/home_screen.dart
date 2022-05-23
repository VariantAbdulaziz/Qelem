import 'package:flutter/cupertino.dart';
import 'package:qelem/data/remote/models/user_model.dart';
import '../data/remote/models/question_model.dart';
import '../widgets/question_card.dart';

Widget HomeScreen() {
  UserModel user = UserModel(
      userName: "Emre",
      firstName: "Varol",
      lastName: "Emre",
      password: "Emre",
      profilePhoto: "Emre");
  return ListView.builder(
    itemCount: 20,
    itemBuilder: (context, position) {
      return QuestionCard(QuestionModel(
        topic: "What is the best way to manage state in flutter",
        userModel: user,
        content:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
      ));
    },
  );
}
