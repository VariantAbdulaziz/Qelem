import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:qelem/infrastructure/auth/user_dto.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';
import 'package:qelem/infrastructure/tag/tag_dto.dart';

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
    const user = UserDto(
      id: 2,
      userName: "bruktedla",
      firstName: "Bruk",
      lastName: "Tedla",
      role: "MEMBER",
      profilePictureRelativeUrl: "/files/cd09124f-0553-45b4-b531-24972c252cd2",
    );

    final tags = [const TagDto(id: 2, name: "Phyiscs")];

    final expectedQuestion = QuestionDto(
      id: 5,
      topic: "question with physics",
      content: "sdg sd gsf gd",
      author: user,
      createdAt: DateTime.utc(2022, 06, 04, 23, 59, 58, 0, 917374),
      updatedAt: DateTime.utc(2022, 06, 04, 23, 59, 58, 0, 917374),
      upVotes: 0,
      downVotes: 0,
      userVote: 0,
      tags: tags,
    );

    expect(question, expectedQuestion);
  });
}
