import 'dart:developer' as developer;
import 'dart:io';

import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/domain/answer/answer_form.dart';
import 'package:qelem/domain/answer/answer_repository_interface.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/infrastructure/answer/answer_api.dart';
import 'package:qelem/infrastructure/answer/answer_dto.dart';
import 'package:qelem/infrastructure/answer/answer_form_mapper.dart';
import 'package:qelem/infrastructure/answer/answer_model_mapper.dart';
import 'package:qelem/infrastructure/answer/local/answer/answer_entity.dart';
import 'package:qelem/infrastructure/answer/local/answer/answer_entity_mapper.dart';
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'package:qelem/infrastructure/question/question_api.dart';
import 'package:qelem/infrastructure/user/local/user_entity_mapper.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

import '../../data/local/local_database/qelem_local_storage.dart';

class AnswerRepository {
class AnswerRepository implements AnswerRepositoryInterface {
  final AnswerApi answerApi;
  final QuestionApi questionApi;
  final DatabaseHelper databaseHelper = DatabaseHelper.instance;

  AnswerRepository(this.answerApi, this.questionApi);

  Future<Either<List<Answer>>> getAnswerForQuestion(int questionId) async {
    try {
      List<Answer> finalResult = [];

      var result = await databaseHelper.getAnswers(questionId);
      if (result.isEmpty) {
        List<AnswerDto> answersDto = await questionApi.getQuestionAnswers(questionId);
        await databaseHelper.addAnswers(answersDto);
        result = await databaseHelper.getAnswers(questionId);
      }

      result.map((answerEntity) async {
        var user = await databaseHelper.getUser(answerEntity.authorId);
        finalResult.add(answerEntity.toAnswer(user!.toUser()));
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

  Future<Either<Answer>> getAnswerById(int answerId) async {
    try {
      AnswerEntity finalResult;
      finalResult = await databaseHelper.getAnswer(answerId);
      final user = await databaseHelper.getUser(finalResult.authorId);
      return Either(val: finalResult.toAnswer(user!.toUser()));
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while fetching an answer with Id $answerId in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Answer>> createAnswer({required AnswerForm answerForm}) async {
    try {
      AnswerDto answer = await answerApi.createAnswer(answerForm.toDto());
      databaseHelper.addAnswers([answer]);
      return Either(val: answer.toAnswer());
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while fetching creating an answer in Answer Repo", error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<void>> deleteAnswer(int answerId) async {
    try {
      await databaseHelper.removeAnswer(answerId);
      await answerApi.deleteAnswer(answerId);
      return Either();
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while fetching creating an answer in Answer Repo", error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Answer>> updateAnswer(Answer answer) async {
    try {
      AnswerDto updatedAnswer = await answerApi.updateAnswer(answer.id, answer.content);
      databaseHelper.updateAnswer(updatedAnswer.toAnswerEntity());
      return Either(val: updatedAnswer.toAnswer());
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while updating an answer with Id ${answer.id} in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Answer>> voteAnswer(int answerId, Vote vote) async {
    try {
      AnswerDto updatedAnswer = await answerApi.voteAnswer(answerId, vote);
      databaseHelper.updateAnswer(updatedAnswer.toAnswerEntity());
      return Either(val: updatedAnswer.toAnswer());
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while up voting an answer with Id $answerId in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<List<Answer>>> getAnswersByQuestionId(int questionId) async {
    try {
      List<Answer> finalResult = [];
      List<AnswerEntity> answers = await databaseHelper.getAnswers(questionId);
      if (answers.isEmpty) {
        List<AnswerDto> answer = await answerApi.getAnswerByQuestionId(questionId);
        await databaseHelper.addAnswers(answer);
      }
      answers = await databaseHelper.getAnswers(questionId);
      for (var e in answers) {
        var user = await databaseHelper.getUser(e.authorId);
        e.toAnswer(user!.toUser());
        finalResult.add(e.toAnswer(user.toUser()));
      }
      return Either(val: finalResult);
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while fetching answers by question Id $questionId in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }
}
