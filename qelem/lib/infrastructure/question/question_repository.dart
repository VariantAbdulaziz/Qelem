import 'dart:developer' as developer;
import 'dart:io';

import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/domain/question/question_form.dart';
import 'package:qelem/infrastructure/question/local/question/question_entity_mapper.dart';
import 'package:qelem/domain/question/question_repository_interface.dart';
import 'package:qelem/infrastructure/auth/auth_repository.dart';
import 'package:qelem/infrastructure/question/question_api.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';
import 'package:qelem/infrastructure/question/question_form_mapper.dart';
import 'package:qelem/infrastructure/question/question_mapper.dart';
import 'package:qelem/infrastructure/user/local/user_entity_mapper.dart';

import '../../data/local/local_database/qelem_local_storage.dart';
import '../../domain/question/question.dart';
import '../../util/either.dart';
import '../../util/error.dart';
import '../common/qelem_http_exception.dart';

class QuestionRepository implements QuestionRepositoryInterface {
  final QuestionApi questionApi;
  final DatabaseHelper databaseHelper = DatabaseHelper.instance;
  final AuthRepository authRepository;

  QuestionRepository(this.questionApi, this.authRepository);

  @override
  Future<Either<List<Question>>> getMyQuestions() async {
    try {
      final userId = (await authRepository.getUserId())!;
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
      List<Question> finalResult = [];

      var result = await databaseHelper.getQuestions();
      if (result.isEmpty) {
        List<QuestionDto> questionsDto = await questionApi.getAllQuestions();
        await databaseHelper.addQuestions(questionsDto);
        result = await databaseHelper.getQuestions();
      }

      result.map((questionEntity) async {
        var user = await databaseHelper.getUser(questionEntity.authorId);
        finalResult.add(questionEntity.toQuestion(user.toUser()));
      }).toList();

      return Either(val: finalResult);
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
      Question finalResult;

      var result = await databaseHelper.getQuestion(id);
      if (result == null) {
        List<QuestionDto> questionsDto = await questionApi.getAllQuestions();
        await databaseHelper.addQuestions(questionsDto);
        result = await databaseHelper.getQuestion(id);
      }
      var user = await databaseHelper.getUser(result!.authorId);
      finalResult = result.toQuestion(user.toUser());
      return Either(val: finalResult);
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while fetching a question with Id $id in Question Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Question>> createQuestion(QuestionForm questionForm) async {
    try {

      final questionDto = await questionApi.createQuestion(questionForm.toDto());
      await databaseHelper.addQuestions([questionDto]);
      return Either(val: questionDto.toQuestion());

    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while fetching creating a question in Question Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<void>> deleteQuestion(int id) async {
    try {

      await databaseHelper.removeQuestion(id);
      await questionApi.deleteQuestion(id);
      return Either();

    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while deleting a question with Id $id in Question Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Question>> updateQuestion(QuestionForm questionForm, int questionId) async {
    try {

      final questionDto = await questionApi.updateQuestion(questionForm.toDto(), questionId);
      await databaseHelper.updateQuestion(questionDto.toQuestionEntity());
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
      await databaseHelper.updateQuestion(updatedQuestion.toQuestionEntity());
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
