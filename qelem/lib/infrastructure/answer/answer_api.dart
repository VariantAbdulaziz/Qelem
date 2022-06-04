import 'dart:convert';

import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/infrastructure/answer/answer_dto.dart';
import 'package:qelem/infrastructure/answer/answer_form_dto.dart';
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'package:qelem/infrastructure/common/vote_mapper.dart';
import 'package:qelem/util/my_http_client.dart';

class AnswerApi {
  final MyHttpClient _httpClient;

  AnswerApi(this._httpClient);

  Future<List<AnswerDto>> getAnswerByQuestionId(int questionId) async {
    final response = await _httpClient.get("questions/$questionId/answers");

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((e) => AnswerDto.fromJson(e))
          .toList();
    } else {
      throw QHttpException(
          json.decode(response.body)["message"] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<List<AnswerDto>> getAllAnswers() async {
    var response = await _httpClient.get('answers');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((e) => AnswerDto.fromJson(e))
          .toList();
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<AnswerDto> getAnswerById(int answerId) async {
    var response = await _httpClient.get('answers/$answerId');

    if (response.statusCode == 200) {
      return AnswerDto.fromJson(json.decode(response.body));
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<AnswerDto> createAnswer(AnswerFormDto answerFormDto) async {
    var response = await _httpClient.post('answers',
        body: json.encode(answerFormDto.toJson()));

    if (response.statusCode == 201) {
      return AnswerDto.fromJson(json.decode(response.body));
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<void> deleteAnswer(int answerId) async {
    var response = await _httpClient.delete('answers/$answerId');

    if (response.statusCode == 200) {
      return;
    } else if (response.statusCode == 404) {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<AnswerDto> updateAnswer(int answerId, String content) async {
    var response = await _httpClient.put('answers/$answerId',
        body: json.encode({'content': content}));

    if (response.statusCode == 200) {
      return AnswerDto.fromJson(json.decode(response.body));
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }

  Future<AnswerDto> voteAnswer(int answerId, Vote vote) async {
    var response = await _httpClient.put('answers/$answerId/vote',
        body: json.encode(vote.toVoteDto().toJson()));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return AnswerDto.fromJson(json.decode(response.body));
    } else {
      throw QHttpException(
          json.decode(response.body)['message'] ?? "Unknown error",
          response.statusCode);
    }
  }
}
