import 'package:flutter/material.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/question/question.dart';

import '../widgets/question_card.dart';

Widget myQuestionsScreen() {
  return ListView.builder(
    controller: ScrollController(),
    itemCount: 20,
    itemBuilder: (context, position) {
      return QuestionCard(Question(
        id: position,
        heading: 'Question $position',
        content: 'Content of question $position',
        author: User(
          id: 1,
          userName: 'emre_varol',
          firstName: "Emre",
          lastName: "Varol",
          profilePicture: "assets/images/default_profile_picture.jpeg",
        ),
      ));
    },
  );
}
