// Mocks generated by Mockito 5.2.0 from annotations
// in qelem/test/repo_tests/question/question_repo_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:qelem/domain/common/vote.dart' as _i7;
import 'package:qelem/domain/question/question.dart' as _i5;
import 'package:qelem/domain/question/question_form.dart' as _i6;
import 'package:qelem/domain/question/question_repository_interface.dart'
    as _i3;
import 'package:qelem/util/either.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<T> extends _i1.Fake implements _i2.Either<T> {}

/// A class which mocks [QuestionRepositoryInterface].
///
/// See the documentation for Mockito's code generation for more information.
class MockQuestionRepositoryInterface extends _i1.Mock
    implements _i3.QuestionRepositoryInterface {
  MockQuestionRepositoryInterface() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<List<_i5.Question>>> getMyQuestions() =>
      (super.noSuchMethod(Invocation.method(#getMyQuestions, []),
              returnValue: Future<_i2.Either<List<_i5.Question>>>.value(
                  _FakeEither_0<List<_i5.Question>>()))
          as _i4.Future<_i2.Either<List<_i5.Question>>>);
  @override
  _i4.Future<_i2.Either<List<_i5.Question>>> getAllQuestions() =>
      (super.noSuchMethod(Invocation.method(#getAllQuestions, []),
              returnValue: Future<_i2.Either<List<_i5.Question>>>.value(
                  _FakeEither_0<List<_i5.Question>>()))
          as _i4.Future<_i2.Either<List<_i5.Question>>>);
  @override
  _i4.Future<_i2.Either<_i5.Question>> getQuestionById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getQuestionById, [id]),
              returnValue: Future<_i2.Either<_i5.Question>>.value(
                  _FakeEither_0<_i5.Question>()))
          as _i4.Future<_i2.Either<_i5.Question>>);
  @override
  _i4.Future<_i2.Either<_i5.Question>> createQuestion(
          _i6.QuestionForm? questionForm) =>
      (super.noSuchMethod(Invocation.method(#createQuestion, [questionForm]),
              returnValue: Future<_i2.Either<_i5.Question>>.value(
                  _FakeEither_0<_i5.Question>()))
          as _i4.Future<_i2.Either<_i5.Question>>);
  @override
  _i4.Future<_i2.Either<void>> deleteQuestion(int? id) => (super.noSuchMethod(
          Invocation.method(#deleteQuestion, [id]),
          returnValue: Future<_i2.Either<void>>.value(_FakeEither_0<void>()))
      as _i4.Future<_i2.Either<void>>);
  @override
  _i4.Future<_i2.Either<_i5.Question>> updateQuestion(
          _i6.QuestionForm? questionForm, int? questionId) =>
      (super.noSuchMethod(
              Invocation.method(#updateQuestion, [questionForm, questionId]),
              returnValue: Future<_i2.Either<_i5.Question>>.value(
                  _FakeEither_0<_i5.Question>()))
          as _i4.Future<_i2.Either<_i5.Question>>);
  @override
  _i4.Future<_i2.Either<_i5.Question>> voteQuestion(
          int? questionId, _i7.Vote? vote) =>
      (super.noSuchMethod(Invocation.method(#voteQuestion, [questionId, vote]),
              returnValue: Future<_i2.Either<_i5.Question>>.value(
                  _FakeEither_0<_i5.Question>()))
          as _i4.Future<_i2.Either<_i5.Question>>);
}
