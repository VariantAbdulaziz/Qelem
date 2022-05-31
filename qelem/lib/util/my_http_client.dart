import 'package:http/http.dart' as http;
import './string_extension.dart';

// Custom HTTP client to streamline the HTTP requests.
class MyHttpClient {
  static const BASE_URL = "http://10.0.2.2:8080/api/v1/";

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
    headers.putIfAbsent('Content-Type', () => 'application/json');
    return _httpClient.get((BASE_URL + url).uri, headers: headers);
  }

  Future<http.Response> post(String url,
      {Map<String, String> headers = const {}, Object? body}) async {
    if (_authToken != null) {
      headers['Authorization'] = 'Bearer $_authToken';
    }
    headers.putIfAbsent('Content-Type', () => 'application/json');

    return _httpClient.post((BASE_URL + url).uri, headers: headers, body: body);
  }

  Future<http.Response> put(String url,
      {Map<String, String> headers = const {}, Object? body}) async {
    if (_authToken != null) {
      headers['Authorization'] = 'Bearer $_authToken';
    }
    headers.putIfAbsent('Content-Type', () => 'application/json');

    return _httpClient.put((BASE_URL + url).uri, headers: headers, body: body);
  }

  Future<http.Response> delete(String url,
      {Map<String, String> headers = const {}}) async {
    if (_authToken != null) {
      headers['Authorization'] = 'Bearer $_authToken';
    }
    headers.putIfAbsent('Content-Type', () => 'application/json');

    return _httpClient.delete((BASE_URL + url).uri, headers: headers);
  }
}
