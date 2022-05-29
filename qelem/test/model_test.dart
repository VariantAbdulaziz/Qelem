import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:qelem/data/remote/models/answer_model.dart';
import 'package:qelem/data/remote/models/question_model.dart';
import 'package:qelem/data/remote/models/user_model.dart';

void main() {
  test("test user", () {
    final file =
        File('test/test_resources/random_user.json').readAsStringSync();

    print(file.runtimeType);

    final user = userModelJson(file);

    expect(user.userName, "test_1");
    expect(user.firstName, "test_1");
    expect(user.lastName, "test_1");
    expect(user.password, "test_1");
    expect(user.role, "MEMBER");
    expect(user.profilePicture, "/user-photos/1/abebe.jpeg");
  });

  test("test question model", () {
    final file =
        File('test/test_resources/sample_question.json').readAsStringSync();

    final question = questionModelJson(file);

    expect(question.content, "The second question");
    expect(question.status, "UNANSWERED");
    expect(question.topic, "the second question");
    expect(question.answer, "");
    expect(question.userModel, "");
  });

  test("test answer model", () {
    final file =
        File('test/test_resources/sample_answer.json').readAsStringSync();
    final answer = answerModelJson(file);

    expect(answer.content, "");
    expect(answer.questionModel, "");
    expect(answer.userModel, "");
    expect(answer.vote, "");
  });
}
