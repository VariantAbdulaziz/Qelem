import 'dart:developer' as developer;
import 'dart:io';

import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/domain/answer/answer_form.dart';
import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/infrastructure/answer/answer_api.dart';
import 'package:qelem/infrastructure/answer/answer_dto.dart';
import 'package:qelem/infrastructure/answer/answer_form_mapper.dart';
import 'package:qelem/infrastructure/answer/answer_model_mapper.dart';
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

class AnswerRepository {
  final AnswerApi answerApi;
  AnswerRepository(this.answerApi);

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

  Future<void> deleteAnswer(int answerId) async {
    try {
      await answerApi.deleteAnswer(answerId);
    } on QHttpException catch (exception) {
      throw Either(error: Error(exception.message));
    } on SocketException catch (_) {
      throw Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while fetching creating an answer in Answer Repo",
          error: e);
      throw Either(error: Error("Unknown error"));
    }
  }

  Future<Either<Answer>> updateAnswer(int answerId, String content) async {
    try {
      AnswerDto updatedAnswer = await answerApi.updateAnswer(answerId, content);
      return Either(val: updatedAnswer.toAnswer());
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while updating an answer with Id $answerId in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  Future<Either<Answer>> upvoteAnswer(Answer answer) async {
    if (answer.userVote == Vote.upVote) {
      // Should never happen, UI should handle this
      throw Exception("Answer already upvoted");
    }

    try {
      await answerApi.unvoteAnswer(answer.id);
      return Either(
        val: answer.copyWith(
            userVote: Vote.upVote,
            upVotes: answer.upVotes + 1,
            downVotes: answer.userVote == Vote.downVote
                ? answer.downVotes - 1
                : answer.downVotes),
      );
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while up voting an answer with Id ${answer.id} in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  Future<Either<Answer>> downvoteAnswer(Answer answer) async {
    if (answer.userVote == Vote.downVote) {
      // Should never happen, UI should handle this
      throw Exception("Answer already downvoted");
    }

    try {
      await answerApi.unvoteAnswer(answer.id);
      return Either(
        val: answer.copyWith(
            userVote: Vote.upVote,
            upVotes: answer.userVote == Vote.upVote
                ? answer.upVotes - 1
                : answer.upVotes,
            downVotes: answer.downVotes + 1),
      );
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while up voting an answer with Id ${answer.id} in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  Future<Either<Answer>> unvoteAnswer(Answer answer) async {
    if (answer.userVote == Vote.none) {
      // Should never happen, UI should handle this
      throw Exception("Answer is not voted");
    }

    try {
      await answerApi.unvoteAnswer(answer.id);
      return Either(
        val: answer.copyWith(
            userVote: Vote.none,
            upVotes: answer.userVote == Vote.upVote
                ? answer.upVotes - 1
                : answer.upVotes,
            downVotes: answer.userVote == Vote.downVote
                ? answer.downVotes - 1
                : answer.downVotes),
      );
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while up voting an answer with Id ${answer.id} in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

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
