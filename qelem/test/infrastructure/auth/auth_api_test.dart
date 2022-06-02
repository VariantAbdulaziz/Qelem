import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:qelem/infrastructure/auth/auth_api.dart';
import 'package:qelem/infrastructure/auth/auth_response_dto.dart';
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'package:qelem/util/my_http_client.dart';

import 'auth_api_test.mocks.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.
@GenerateMocks([MyHttpClient])
void main() {
  // Create a MockClient and assign it to the httpClient variable.
  var httpClient = MockMyHttpClient();

  group("login", () {
    test("Login with correct credentials reutrns User and jwt token", () async {
      final response = File(
              'test/infrastructure/auth/sample_response/successful_login_response.json')
          .readAsStringSync();

      var expectedResponse = AuthResponseDto.fromJson(json.decode(response));

      when(httpClient.post(
        "auth/login",
        body: jsonEncode({
          'username': "test",
          'password': "test",
        }),
      )).thenAnswer((_) async => http.Response(response, 200));

      final authApi = AuthApi(httpClient);

      final result = await authApi.login(
        username: "test",
        password: "test",
      );

      expect(result, expectedResponse);
    });

    test("Login with incorrect credentials throws exception", () async {
      final response = File(
              'test/infrastructure/auth/sample_response/unsuccessful_login_response.json')
          .readAsStringSync();

      when(httpClient.post(
        "auth/login",
        body: jsonEncode({
          'username': "test",
          'password': "test",
        }),
      )).thenAnswer((_) async => http.Response(response, 400));

      final authApi = AuthApi(httpClient);

      expect(
        authApi.login(
          username: "test",
          password: "test",
        ),
        throwsA(isA<QHttpException>()),
      );
    });

    test(
        "Login with incorrect credentials throws exception with correct message",
        () async {
      final response = File(
              'test/infrastructure/auth/sample_response/unsuccessful_login_response.json')
          .readAsStringSync();

      when(httpClient.post(
        "auth/login",
        body: jsonEncode({
          'username': "test",
          'password': "test",
        }),
      )).thenAnswer((_) async => http.Response(response, 400));

      final authApi = AuthApi(httpClient);

      try {
        await authApi.login(
          username: "test",
          password: "test",
        );
      } on QHttpException catch (e) {
        expect(e.statusCode, 400);
        expect(e.message, "Incorrect username or password");
      }
    });
  });
}
