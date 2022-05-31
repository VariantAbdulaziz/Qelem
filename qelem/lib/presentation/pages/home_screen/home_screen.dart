import 'package:flutter/cupertino.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/question/question.dart';
import '../question/widgets/question_card.dart';

Widget homeScreen() {
  return ListView.builder(
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
            profilePicture: "",
          ),
        ));
      });
}
