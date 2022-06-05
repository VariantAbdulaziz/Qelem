import 'dart:convert';

import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'package:qelem/infrastructure/tag/tag_dto.dart';
import 'package:qelem/util/my_http_client.dart';

class TagsApi {
  final MyHttpClient _httpClient;

  TagsApi(this._httpClient);

  Future<List<TagDto>> getTags() async {
    final response = await _httpClient.get('tags');
    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((e) => TagDto.fromJson(e))
          .toList();
    }
    throw QHttpException(
        json.decode(response.body)['message'] ?? "Unknown error",
        response.statusCode);
  }

  Future<TagDto> getTag(int id) async {
    final response = await _httpClient.get('tags/$id');

    if (response.statusCode == 200) {
      return TagDto.fromJson(json.decode(response.body));
    }
    throw QHttpException(
        json.decode(response.body)['message'] ?? 'Unknown error',
        response.statusCode);
  }

  Future<TagDto> createTag(String tagName) async {
    final response =
        await _httpClient.post('tags', body: json.encode({'name': tagName}));

    if (response.statusCode == 201) {
      return TagDto.fromJson(json.decode(response.body));
    }
    throw QHttpException(
        json.decode(response.body)['message'] ?? 'Unknown error',
        response.statusCode);
  }

  Future<TagDto> updateTag(TagDto tag) async {
    final response = await _httpClient.put('tags/${tag.id}',
        body: json.encode(tag.toJson()));

    if (response.statusCode == 200 || response.statusCode == 201) {
      return TagDto.fromJson(json.decode(response.body));
    }
    throw QHttpException(
        json.decode(response.body)['message'] ?? 'Unknown error',
        response.statusCode);
  }
}
