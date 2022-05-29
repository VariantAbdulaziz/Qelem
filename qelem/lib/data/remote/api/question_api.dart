import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qelem/common/constants.dart';
import 'package:qelem/data/remote/models/questio_model.dart';

class QuestionApi {
  static const String _questionsRootUrl = "${Constants.BASE_URL}questions/";

  Future<QuestionModel> getQuestion(int questionId) async {
    var url = Uri.parse(_questionsRootUrl + "$questionId");

    final response = await http.get(url);
    final Map<String, dynamic> data = json.decode(response.body);

    if (response.statusCode == 200) {
      return QuestionModel.fromJson(data);
    } else {
      throw Exception('Failed to fetch quesion');
    }
  }

  Future<QuestionModel> createQuestion(QuestionModel question) async {
    final url = Uri.parse(_questionsRootUrl);
    var body = question.toJson();

    final response = await http.post(
      url,
      headers: {'Content-Type': "application/json"},
      body: body,
    );

    if (response.statusCode == 201) {
      final Map<String, dynamic> data = json.decode(response.body);
      return QuestionModel.fromJson(data);
    } else {
      throw Exception('Failed to post quesion');
    }
  }

  Future<QuestionModel> updateQuestion(QuestionModel question) async {
    final url = Uri.parse(_questionsRootUrl);
    var body = question.toJson();

    final response = await http.post(
      url,
      headers: {'Content-Type': "application/json"},
      body: body,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return QuestionModel.fromJson(data);
    } else {
      throw Exception('Failed to update quesion');
    }
  }

  Future<http.Response> deleteQuestion(int questionId) async {
    final url = Uri.parse(_questionsRootUrl + "$questionId");

    final http.Response response = await http.delete(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );

    return response;
  }
}
