import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qelem/common/constants.dart';
import 'package:qelem/data/remote/models/questio_model.dart';

class QuestionApi {
  static const String _questionsRoot = "${Constants.BASE_URL}questions/";

  Future<QuestionModel> getQuestion() async {
    var response = await http.get(Uri.parse(_questionsRoot));

    final Map<String, dynamic> data = json.decode(response.body);

    if (response.statusCode == 200) {
      return QuestionModel.fromJson(data);
    } else {
      throw Exception('Failed to load quesions');
    }
  }
}
