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

    print(file.runtimeType);

    final user = UserModel.fromJson(json.decode(file));

    expect(user.username, "test_1");
    expect(user.firstName, "test_1");
    expect(user.lastName, "test_1");
    expect(user.password, "test_1");
    expect(user.role, "MEMBER");
    expect(user.profilePicture, "/user-photos/1/abebe.jpeg");
  });

  test("test question model", () {
    final file =
        File('test/test_resources/sample_question.json').readAsStringSync();

    final question = QuestionModel.fromJson(json.decode(file));

    //excluded user model response and answer model response so as to test the
    // on thier own. Inorder to test only the question model json parser we need
    // to delete these models' from the question model temporerly(same for answer model)
    expect(question.content, "The second question");
    expect(question.status, "UNANSWERED");
    expect(question.topic, "the second question");
  });

  test("test answer model", () {
    final file =
        File('test/test_resources/sample_answer.json').readAsStringSync();
    final answer = AnswerModel.fromJson(json.decode(file));

    expect(answer.content, "The second answer");
  });
}
