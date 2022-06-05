import 'dart:convert';

import 'package:flutter/services.dart';
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
