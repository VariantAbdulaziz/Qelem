import 'package:flutter/cupertino.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/domain/question/question.dart';
import '../question/widgets/question_card.dart';

Widget homeScreen() {
  return ListView.builder(
      controller: ScrollController(),
      itemCount: 20,
      itemBuilder: (context, position) {
        return QuestionCard(
          Question(
            id: position,
            topic: 'Question $position',
            content: 'Content of question $position',
            author: User(
              id: 1,
              userName: 'emre_varol',
              firstName: "Emre",
              lastName: "Varol",
              profilePicture: "assets/images/default_profile_picture.jpeg",
            ),
            upVotes: 0,
            downVotes: 0,
            userVote: Vote.none,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          ),
        );
      });
}
