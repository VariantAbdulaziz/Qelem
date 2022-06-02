import 'dart:convert';

import 'package:qelem/infrastructure/answer/answer_dto.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';
import 'package:qelem/infrastructure/question/question_form_dto.dart';
import 'package:qelem/util/my_http_client.dart';

import '../common/qelem_http_exception.dart';

class QuestionApi {
  final MyHttpClient _httpClient;

  QuestionApi(this._httpClient);

  Future<QuestionDto> createQuestion(QuestionFormDto questionFormDto) async {
    var response =
        await _httpClient.post('questions', body: questionFormDto.toJson());

    if (response.statusCode == 201) {
      return QuestionDto.fromJson(json.decode(response.body));
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  // get all questions
  Future<List<QuestionDto>> getAllQuestions() async {
    var response = await _httpClient.get('questions');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((e) => QuestionDto.fromJson(e))
          .toList();
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<void> deleteQuestion(int questionId) async {
    var response = await _httpClient.delete('questions/$questionId');

    if (response.statusCode == 200) {
      return;
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<QuestionDto> updateQuestion(
      QuestionFormDto questionFormDto, int questionId) async {
    var response = await _httpClient.patch('questions/$questionId',
        body: questionFormDto.toJson());

    if (response.statusCode == 200) {
      return QuestionDto.fromJson(json.decode(response.body));
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<AnswerDto>> getQuestionAnswers(int questionId) async {
    var response = await _httpClient.get('questions/$questionId/answers');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((answer) => AnswerDto.fromJson(answer))
          .toList();
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<void> upVoteQuestion(int questionId) async {
    var response = await _httpClient.post('questions/$questionId/upvote');

    if (response.statusCode == 200) {
      return;
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<void> downvoteQuestion(int questionId) async {
    var response = await _httpClient.post('questions/$questionId/downvote');

    if (response.statusCode == 200) {
      return;
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<void> unvoteQuestion(int questionId) async {
    var response = await _httpClient.delete('questions/$questionId/unvote');

    if (response.statusCode == 200) {
      return;
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<QuestionDto> getQuestionById(int questionId) async {
    var response = await _httpClient.get('questions/$questionId');

    if (response.statusCode == 200) {
      return QuestionDto.fromJson(json.decode(response.body));
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }
}
