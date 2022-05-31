import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:qelem/data/remote/models/answer_model.dart';
import 'package:qelem/data/remote/models/question_model.dart';
import 'package:qelem/data/remote/models/user_model.dart';

void main() {
  test("test user", () {
    final file =
        File('test/test_resources/random_user.json').readAsStringSync();

    final user = User.fromJson(json.decode(file));

    expect(user.userName, "test_1");
    expect(user.firstName, "test_1");
    expect(user.lastName, "test_1");
    expect(user.role, "MEMBER");
    expect(user.profilePicture, "/user-photos/1/abebe.jpeg");
  });

  test("test question model", () {
    final file =
        File('test/test_resources/sample_question.json').readAsStringSync();

    final question = Question.fromJson(json.decode(file));

    expect(question.author.userName, "brukted");
    expect(question.content, "this is the question's content");
    expect(question.createdAt, "2022-05-30T13:14:18.582299Z");
    expect(question.downVotes, 0);
    expect(question.upVotes, 0);
    expect(question.id, 6);
    expect(question.topic, "asdfad");
    expect(question.updatedAt, "2022-05-30T13:14:18.582299Z");
    expect(question.userVote, 0);
  });

  test("test answer model", () {
    final file =
        File('test/test_resources/sample_answer.json').readAsStringSync();
    final answer = Answer.fromJson(json.decode(file));

    expect(answer.id, 83);
    expect(answer.content, "Blah blah blash");
    expect(answer.author.userName, "brukted");
    expect(answer.questionId, 8);
    expect(answer.upVotes, 0);
    expect(answer.downVotes, 0);
    expect(answer.createdAt, "2022-05-30T13:34:28.707505Z");
    expect(answer.updatedAt, "2022-05-30T13:34:28.707505Z");
  });
}
