import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/domain/question/question.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';
import 'package:qelem/infrastructure/question/question_mapper.dart';

Future<Question> getQuestion() async {
  final dataString =
      await _loadAsset('test/test_resources/sample_question.json');

  final Map<String, dynamic> json = jsonDecode(dataString);

  QuestionDto questionDto = QuestionDto.fromJson(json);
  final question = questionDto.toQuestion();

  return question;
}

// Loads sample json data from file system
Future<String> _loadAsset(String path) async {
  return rootBundle.loadString(path);
}

final mockQuestion = Question(
  id: 6,
  topic: 'asdfad',
  content: 'this is the question\'s content',
  author: User(
      id: 3,
      firstName: "bruk",
      lastName: "tedla",
      userName: "brukted",
      profilePicture: "/user-photos/1/abebe.jpeg"),
  createdAt: DateTime.parse("2022-05-30 13:14:18.582299z"),
  updatedAt: DateTime.parse("2022-05-30 13:14:18.582299z"),
  upVotes: 0,
  downVotes: 0,
  userVote: Vote.upVote,
);
