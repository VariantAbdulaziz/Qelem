import 'dart:io';

import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/infrastructure/answer/answer_api.dart';
import 'package:qelem/infrastructure/answer/answer_dto.dart';
import 'package:qelem/infrastructure/answer/answer_form_dto.dart';
import 'package:qelem/infrastructure/answer/answer_model_mapper.dart';
import 'package:qelem/infrastructure/common/qelem_http_exception.dart';
import 'package:qelem/infrastructure/common/vote.dart';
import 'package:qelem/util/either.dart';
import 'package:qelem/util/error.dart';

import 'dart:developer' as developer;

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
          "Unexpected error while fetching an answer with Id ${answerId} in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  Future<Either<Answer>> createAnswer(
      {required AnswerFormDto answerFormDto}) async {
    try {
      AnswerDto answer = await answerApi.createAnswer(answerFormDto);
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

  Future<Either<Answer>> updateAnswer(
      AnswerFormDto answerFormDto, int answerId, String content) async {
    try {
      AnswerDto updatedAnswer =
          await answerApi.updateAnswer(answerFormDto, answerId, content);
      return Either(val: updatedAnswer.toAnswer());
    } on QHttpException catch (exception) {
      return Either(error: Error(exception.message));
    } on SocketException catch (_) {
      return Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log(
          "Unexpected error while updating an answer with Id ${answerId} in Answer Repo",
          error: e);
      return Either(error: Error("Unknown error"));
    }
  }

  Future<Either<Answer>> upvoteAnswer(Answer answer) async {
    int prevVote;
    if (answer.userVote == Vote.upVote) {
      prevVote = 1;
    } else if (answer.userVote == Vote.downVote) {
      prevVote = -1;
    } else {
      prevVote = 0;
    }

    if (answer.userVote == Vote.upVote) {
      try {
        await answerApi.upvoteAnswer(answer.id);
        return Either(
            val: Answer(
                id: answer.id,
                content: answer.content,
                questionId: answer.questionId,
                author: answer.author,
                upVotes: answer.upVotes - prevVote,
                downVotes: answer.downVotes,
                userVote: Vote.none,
                createdAt: answer.createdAt,
                updatedAt: answer.updatedAt));
      } on QHttpException catch (exception) {
        return Either(error: Error(exception.message));
      }
    } else {
      try {
        await answerApi.unvoteAnswer(answer.id);
        return Either(
            val: Answer(
                id: answer.id,
                content: answer.content,
                questionId: answer.questionId,
                author: answer.author,
                upVotes: answer.upVotes + 1,
                downVotes: answer.downVotes + prevVote,
                userVote: Vote.upVote,
                createdAt: answer.createdAt,
                updatedAt: answer.updatedAt));
      } on QHttpException catch (exception) {
        return Either(error: Error(exception.message));
      }
    }
  }

  Future<Either<Answer>> downvoteAnswer(Answer answer) async {
    int prevVote;
    if (answer.userVote == Vote.upVote) {
      prevVote = 1;
    } else if (answer.userVote == Vote.downVote) {
      prevVote = -1;
    } else {
      prevVote = 0;
    }

    if (answer.userVote == Vote.upVote) {
      try {
        await answerApi.unvoteAnswer(answer.id);
        return Either(
            val: Answer(
                id: answer.id,
                content: answer.content,
                questionId: answer.questionId,
                author: answer.author,
                upVotes: answer.upVotes,
                downVotes: answer.downVotes + prevVote,
                userVote: Vote.none,
                createdAt: answer.createdAt,
                updatedAt: answer.updatedAt));
      } on QHttpException catch (exception) {
        return Either(error: Error(exception.message));
      }
    } else {
      try {
        await answerApi.downvoteAnswer(answer.id);
        return Either(
            val: Answer(
                id: answer.id,
                content: answer.content,
                questionId: answer.questionId,
                author: answer.author,
                upVotes: answer.upVotes - prevVote,
                downVotes: answer.downVotes + 1,
                userVote: Vote.downVote,
                createdAt: answer.createdAt,
                updatedAt: answer.updatedAt));
      } on QHttpException catch (exception) {
        return Either(error: Error(exception.message));
      }
    }
  }
}
