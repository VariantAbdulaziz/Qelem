import 'package:flutter/material.dart';

import '../../../../domain/models/question_model.dart';
import '../widgets/question_card.dart';

Widget myQuestionsScreen() {
  return ListView.builder(
    itemCount: 20,
    itemBuilder: (context, position) {
      return QuestionCard(QuestionModel(
          "What is the best way to manage state in flutter",
          "Emre Varol",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
          "assets/images/default_profile_picture.jpeg"));
    },
  );
}
