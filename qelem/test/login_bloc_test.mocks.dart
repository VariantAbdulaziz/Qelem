// Mocks generated by Mockito 5.2.0 from annotations
// in qelem/test/login_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;

import 'package:mockito/mockito.dart' as _i1;
import 'package:qelem/data/local/shared_prefs/shared_prefs_service.dart' as _i3;
import 'package:qelem/domain/auth/change_password_form.dart' as _i11;
import 'package:qelem/domain/auth/login_form.dart' as _i10;
import 'package:qelem/domain/auth/login_response.dart' as _i9;
import 'package:qelem/domain/auth/registration_form.dart' as _i8;
import 'package:qelem/domain/auth/user.dart' as _i7;
import 'package:qelem/infrastructure/auth/auth_api.dart' as _i2;
import 'package:qelem/infrastructure/auth/auth_repository.dart' as _i5;
import 'package:qelem/util/either.dart' as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeAuthApi_0 extends _i1.Fake implements _i2.AuthApi {}

class _FakeSharedPrefsService_1 extends _i1.Fake
    implements _i3.SharedPrefsService {}

class _FakeEither_2<T> extends _i1.Fake implements _i4.Either<T> {}

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i5.AuthRepository {
  MockAuthRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.AuthApi get authApi => (super.noSuchMethod(Invocation.getter(#authApi),
      returnValue: _FakeAuthApi_0()) as _i2.AuthApi);
  @override
  set authApi(_i2.AuthApi? _authApi) =>
      super.noSuchMethod(Invocation.setter(#authApi, _authApi),
          returnValueForMissingStub: null);
  @override
  _i3.SharedPrefsService get sharedPrefsService =>
      (super.noSuchMethod(Invocation.getter(#sharedPrefsService),
          returnValue: _FakeSharedPrefsService_1()) as _i3.SharedPrefsService);
  @override
  set sharedPrefsService(_i3.SharedPrefsService? _sharedPrefsService) => super
      .noSuchMethod(Invocation.setter(#sharedPrefsService, _sharedPrefsService),
          returnValueForMissingStub: null);
  @override
  _i6.Future<_i4.Either<_i7.User>> register(
          {_i8.RegistrationForm? registerForm}) =>
      (super.noSuchMethod(
              Invocation.method(#register, [], {#registerForm: registerForm}),
              returnValue:
                  Future<_i4.Either<_i7.User>>.value(_FakeEither_2<_i7.User>()))
          as _i6.Future<_i4.Either<_i7.User>>);
  @override
  _i6.Future<_i4.Either<_i9.LoginReponse>> login({_i10.LoginForm? loginForm}) =>
      (super.noSuchMethod(
              Invocation.method(#login, [], {#loginForm: loginForm}),
              returnValue: Future<_i4.Either<_i9.LoginReponse>>.value(
                  _FakeEither_2<_i9.LoginReponse>()))
          as _i6.Future<_i4.Either<_i9.LoginReponse>>);
  @override
  _i6.Future<_i4.Either<void>> changePassword(
          {_i11.ChangePasswordForm? changePasswordForm}) =>
      (super.noSuchMethod(
          Invocation.method(
              #changePassword, [], {#changePasswordForm: changePasswordForm}),
          returnValue:
              Future<_i4.Either<void>>.value(_FakeEither_2<void>())) as _i6
          .Future<_i4.Either<void>>);
  @override
  _i6.Future<String?> getAuthToken() =>
      (super.noSuchMethod(Invocation.method(#getAuthToken, []),
          returnValue: Future<String?>.value()) as _i6.Future<String?>);
  @override
  _i6.Future<void> logout() =>
      (super.noSuchMethod(Invocation.method(#logout, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i6.Future<void>);
}
