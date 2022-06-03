import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:qelem/infrastructure/auth/user_dto.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';

void main() {
  test("test user", () {
    final file =
        File('test/test_resources/sample_user.json').readAsStringSync();

    final user = UserDto.fromJson(json.decode(file));

    expect(user.id, 3);
    expect(user.userName, "brukted");
    expect(user.firstName, "bruk");
    expect(user.lastName, "tedla");
    expect(user.role, "MEMBER");
    expect(user.profilePictureRelativeUrl, "/files/abebe.jpeg");
  });

  test("test question model", () {
    final file =
        File('test/test_resources/sample_question.json').readAsStringSync();

    final question = QuestionDto.fromJson(json.decode(file));

    expect(question.author.userName, "brukted");
    expect(question.content, "this is the question's content");
    // "2022-05-30T13:14:18.582299Z"
    expect(
        question.createdAt, DateTime.utc(2022, 5, 30, 13, 14, 18, 0, 582299));
    expect(
        question.updatedAt, DateTime.utc(2022, 5, 30, 13, 14, 18, 0, 582299));
    expect(question.downVotes, 0);
    expect(question.upVotes, 0);
    expect(question.id, 6);
    expect(question.topic, "asdfad");
    expect(question.userVote, 0);
  });

  0;
}
