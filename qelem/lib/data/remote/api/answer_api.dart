import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qelem/common/constants.dart';
import 'package:qelem/data/remote/models/answer_model.dart';

class AnswerApi {
  static const String _answersRootUrl = "${Constants.BASE_URL}answers/";

  Future<AnswerModel> getAnswers() async {
    var response = await http.get(Uri.parse(_answersRootUrl));

    final Map<String, dynamic> data = json.decode(response.body);

    if (response.statusCode == 200) {
      return AnswerModel.fromJson(data);
    } else {
      throw Exception('Failed to load quesions');
    }
  }

  Future<AnswerModel> getQuestion(int answerId) async {
    var url = Uri.parse(_answersRootUrl + "$answerId");

    final response = await http.get(url);
    final Map<String, dynamic> data = json.decode(response.body);

    if (response.statusCode == 200) {
      return AnswerModel.fromJson(data);
    } else {
      throw Exception('Failed to fetch quesion');
    }
  }

  Future<AnswerModel> createAnswer(AnswerModel answer) async {
    final url = Uri.parse(_answersRootUrl);
    var body = answer.toJson();

    final response = await http.post(
      url,
      headers: {'Content-Type': "application/json"},
      body: body,
    );

    if (response.statusCode == 201) {
      final Map<String, dynamic> data = json.decode(response.body);
      return AnswerModel.fromJson(data);
    } else {
      throw Exception('Failed to post answer');
    }
  }

  Future<AnswerModel> updateAnswer(AnswerModel answer) async {
    final url = Uri.parse(_answersRootUrl);
    final body = answer.toJson();

    final response = await http.put(
      url,
      headers: {'Content-Type': "application/json"},
      body: body,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return AnswerModel.fromJson(data);
    } else {
      throw Exception('Failed to update answer');
    }
  }
}
