import 'dart:convert';

import 'package:qelem/infrastructure/answer/answer_dto.dart';
import 'package:qelem/infrastructure/answer/answer_form_dto.dart';
import 'package:qelem/util/my_http_client.dart';

class AnswerApi {
  final MyHttpClient _httpClient;

  AnswerApi(this._httpClient);

  Future<AnswerDto> createAnswer(AnswerFormDto answerFormDto) async {
    var response =
        await _httpClient.post('answers', body: answerFormDto.toJson());

    if (response.statusCode == 201) {
      return AnswerDto.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to create answer!');
    }
  }

  Future<void> deleteAnswer(int answerId) async {
    var response = await _httpClient.delete('answers/$answerId');

    if (response.statusCode == 200) {
      return;
    } else {
      throw Exception('Failed to delete answer!');
    }
  }

  Future<AnswerDto> updateAnswer(
      AnswerFormDto answerFormDto, int answerId, String content) async {
    var response = await _httpClient
        .patch('answers/$answerId', body: {'content': content});

    if (response.statusCode == 200) {
      return AnswerDto.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to update answer!');
    }
  }

  Future<void> upvoteAnswer(int answerId) async {
    var response = await _httpClient.post('answers/$answerId/upvote');

    if (response.statusCode == 200) {
      return;
    } else {
      throw Exception('Failed to upvote answer!');
    }
  }

  Future<void> downvoteAnswer(int answerId) async {
    var response = await _httpClient.post('answers/$answerId/downvote');

    if (response.statusCode == 200) {
      return;
    } else {
      throw Exception('Failed to downvote answer!');
    }
  }

  Future<void> unvoteAnswer(int answerId) async {
    var response = await _httpClient.delete('answers/$answerId/unvote');

    if (response.statusCode == 200) {
      return;
    } else {
      throw Exception('Failed to unvote answer!');
    }
  }
}
