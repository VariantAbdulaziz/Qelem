import 'dart:developer' as developer;
import 'dart:io';

import 'package:qelem/domain/auth/auth_repository_interface.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/domain/question/question_form.dart';
import 'package:qelem/domain/question/question_repository_interface.dart';
import 'package:qelem/infrastructure/question/question_api.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';
import 'package:qelem/infrastructure/question/question_form_mapper.dart';
import 'package:qelem/infrastructure/question/question_mapper.dart';

import '../../domain/question/question.dart';
import '../../util/either.dart';
import '../../util/error.dart';
import '../common/qelem_http_exception.dart';

class QuestionRepository implements QuestionRepositoryInterface {
  final QuestionApi questionApi;
  final AuthRepositoryInterface authRepository;

  QuestionRepository(this.questionApi, this.authRepository);

  @override
  Future<Either<List<Question>>> getMyQuestions() async {
    try {
      final userId = (await authRepository.getAuthenticatedUser())!.id;
      final questionsDtos = await questionApi.getAllQuestions(authorId: userId);

      return Either(val: questionsDtos.map((e) => e.toQuestion()).toList());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while up voting while fetching all questions in Question Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<List<Question>>> getAllQuestions() async {
    try {
      List<QuestionDto> questionsDto = await questionApi.getAllQuestions();
      return Either(val: questionsDto.map((e) => e.toQuestion()).toList());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while up voting while fetching all questions in Question Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Question>> getQuestionById(int id) async {
    try {
      final questionDto = await questionApi.getQuestionById(id);
      return Either(val: questionDto.toQuestion());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while fetching a question with Id $id in Question Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Question>> createQuestion(QuestionForm questionForm) async {
    try {
      final questionDto =
          await questionApi.createQuestion(questionForm.toDto());
      return Either(val: questionDto.toQuestion());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while fetching creating a question in Question Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<void>> deleteQuestion(int id) async {
    try {
      await questionApi.deleteQuestion(id);
      return Either();
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while deleting a question with Id $id in Question Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Question>> updateQuestion(
      QuestionForm questionForm, int questionId) async {
    try {
      final questionDto =
          await questionApi.updateQuestion(questionForm.toDto(), questionId);
      return Either(val: questionDto.toQuestion());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while updating a question with Id $questionId in Question Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Question>> voteQuestion(int questionId, Vote vote) async {
    try {
      QuestionDto updatedQuestion =
          await questionApi.voteQuestion(questionId, vote);
      return Either(val: updatedQuestion.toQuestion());
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while voting an question with Id $questionId in Question Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }
}
