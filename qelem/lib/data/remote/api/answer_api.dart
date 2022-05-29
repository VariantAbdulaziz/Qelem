import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qelem/common/constants.dart';
import 'package:qelem/data/remote/models/answer_model.dart';

class AnswerApi {
  static const String _answersRoot = "${Constants.BASE_URL}answers/";

  Future<AnswerModel> getAnswers() async {
    var response = await http.get(Uri.parse(_answersRoot));

    final Map<String, dynamic> data = json.decode(response.body);

    if (response.statusCode == 200) {
      return AnswerModel.fromJson(data);
    } else {
      throw Exception('Failed to load quesions');
    }
  }
}
