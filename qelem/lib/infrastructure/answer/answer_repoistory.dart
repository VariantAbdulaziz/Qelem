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
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

class AnswerRepository implements AnswerRepositoryInterface {
  final AnswerApi answerApi;
  AnswerRepository(this.answerApi);

  @override
  Future<Either<List<Answer>>> getAllAnswers() async {
    try {
      List<AnswerDto> answerDto = await answerApi.getAllAnswers();
      return Either(val: answerDto.map((e) => e.toAnswer()).toList());
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while fetching answers in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Answer>> getAnswerById(int answerId) async {
    try {
      AnswerDto answerDto = await answerApi.getAnswerById(answerId);
      return Either(val: answerDto.toAnswer());
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while fetching an answer with Id $answerId in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Answer>> createAnswer({required AnswerForm answerForm}) async {
    try {
      AnswerDto answer = await answerApi.createAnswer(answerForm.toDto());
      return Either(val: answer.toAnswer());
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while fetching creating an answer in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<void>> deleteAnswer(int answerId) async {
    try {
      await answerApi.deleteAnswer(answerId);
      return Either();
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while fetching creating an answer in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Answer>> updateAnswer(Answer answer) async {
    try {
      AnswerDto updatedAnswer =
          await answerApi.updateAnswer(answer.id, answer.content);
      return Either(val: updatedAnswer.toAnswer());
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while updating an answer with Id ${answer.id} in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<Answer>> voteAnswer(int answerId, Vote vote) async {
    try {
      AnswerDto updatedAnswer = await answerApi.voteAnswer(answerId, vote);
      return Either(val: updatedAnswer.toAnswer());
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while voting an answer with Id $answerId in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  @override
  Future<Either<List<Answer>>> getAnswersByQuestionId(int questionId) async {
    try {
      List<AnswerDto> answers =
          await answerApi.getAnswerByQuestionId(questionId);
      return Either(val: answers.map((answer) => answer.toAnswer()).toList());
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
