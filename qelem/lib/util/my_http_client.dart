import 'dart:io';

import 'package:http/http.dart' as http;
import './string_extension.dart';

// Custom HTTP client to streamline the HTTP requests.
class MyHttpClient {
  static const baseUrl = "http://10.0.2.2:8080/api/v1/";

  final http.Client _httpClient = http.Client();
  String? _authToken;

  MyHttpClient();

  set authToken(String value) {
    _authToken = value;
  }

  Future<http.Response> get(String url,
      {Map<String, String> headers = const {}}) async {
    if (_authToken != null) {
      headers['Authorization'] = 'Bearer $_authToken';
    }

    return _httpClient.get((baseUrl + url).uri, headers: headers);
  }

  Future<http.Response> post(String url,
      {Map<String, String> headers = const {},
      Object? body,
      String contentType = "application/json"}) async {
    if (_authToken != null) {
      headers['Authorization'] = 'Bearer $_authToken';
    }
    headers.putIfAbsent('Content-Type', () => contentType);

    return _httpClient.post((baseUrl + url).uri, headers: headers, body: body);
  }

  Future<http.Response> put(String url,
      {Map<String, String> headers = const {},
      Object? body,
      String contentType = "application/json"}) async {
    if (_authToken != null) {
      headers['Authorization'] = 'Bearer $_authToken';
    }
    headers.putIfAbsent('Content-Type', () => contentType);

    return _httpClient.put((baseUrl + url).uri, headers: headers, body: body);
  }

  Future<http.Response> patch(String url,
      {Map<String, String> headers = const {},
      Object? body,
      String contentType = "application/json"}) async {
    if (_authToken != null) {
      headers['Authorization'] = 'Bearer $_authToken';
    }
    headers.putIfAbsent('Content-Type', () => contentType);

    return _httpClient.patch((baseUrl + url).uri, headers: headers, body: body);
  }

  Future<http.Response> delete(String url,
      {Map<String, String> headers = const {},
      Object? body,
      String contentType = "application/json"}) async {
    if (_authToken != null) {
      headers['Authorization'] = 'Bearer $_authToken';
    }
    headers.putIfAbsent('Content-Type', () => contentType);

    return _httpClient.delete((baseUrl + url).uri,
        headers: headers, body: body);
  }

  Future<http.StreamedResponse> multiPartRequest(
    String url,
    String method, {
    Map<String, String> headers = const {},
    Map<String, dynamic> body = const {},
    Map<String, File> files = const {},
  }) async {
    if (_authToken != null) {
      headers['Authorization'] = 'Bearer $_authToken';
    }
    headers.putIfAbsent('Content-Type', () => "multipart/form-data");

    var request = http.MultipartRequest(method, Uri.parse(baseUrl + url));

    // Add headers
    request.headers.addAll(headers);

    // Add files to the request.
    if (files.isNotEmpty) {
      files.forEach((key, value) {
        request.files
            .add(http.MultipartFile.fromBytes(key, value.readAsBytesSync()));
      });
    }

    // Add body to the request.
    if (body.isNotEmpty) {
      body.forEach((key, value) {
        request.fields[key] = value.toString();
      });
    }

    return await request.send();
  }
}
