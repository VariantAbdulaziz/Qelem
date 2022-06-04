import 'dart:developer' as developer;
import 'dart:io';

import 'package:qelem/domain/answer/answer.dart';
import 'package:qelem/domain/answer/answer_form.dart';
import 'package:qelem/domain/answer/answer_mapper.dart';
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

  Future<void> deleteAnswer(int answerId) async {
    try {
      await databaseHelper.removeAnswer(answerId);
      await answerApi.deleteAnswer(answerId);
    } on QHttpException catch (exception) {
      throw Either(error: Error(exception.message));
    } on SocketException catch (_) {
      throw Either(error: Error("Check your internet connection"));
    } on Exception catch (e) {
      developer.log("Unexpected error while fetching creating an answer in Answer Repo", error: e);
      throw Either(error: Error("Unknown error"));
    }
  }

  Future<Either<Answer>> updateAnswer(Answer answer) async {
    try {
      AnswerDto updatedAnswer = await answerApi.updateAnswer(answer.id, answer.content);
      await databaseHelper.updateAnswer(answer.toAnswerEntity());
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

  Future<Either<Answer>> upvoteAnswer(Answer answer) async {
    if (answer.userVote == Vote.upVote) {
      // Should never happen, UI should handle this
      throw Exception("Answer already upvoted");
    }

    try {
      await answerApi.unVoteAnswer(answer.id);

      var newAnswer = answer.copyWith(
          userVote: Vote.upVote,
          upVotes: answer.upVotes + 1,
          downVotes: answer.userVote == Vote.downVote ? answer.downVotes - 1 : answer.downVotes);
      await databaseHelper.updateAnswer(newAnswer.toAnswerEntity());

      return Either(val: newAnswer);
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

  Future<Either<Answer>> downVoteAnswer(Answer answer) async {
    if (answer.userVote == Vote.downVote) {
      // Should never happen, UI should handle this
      throw Exception("Answer already downvoted");
    }

    try {
      await answerApi.unVoteAnswer(answer.id);

      var newAnswer = answer.copyWith(
          userVote: Vote.downVote,
          downVotes: answer.downVotes + 1,
          upVotes: answer.userVote == Vote.upVote ? answer.upVotes - 1 : answer.upVotes);

      return Either(val: newAnswer);
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

  Future<Either<Answer>> unVoteAnswer(Answer answer) async {
    if (answer.userVote == Vote.none) {
      // Should never happen, UI should handle this
      throw Exception("Answer is not voted");
    }

    try {
      await answerApi.unVoteAnswer(answer.id);

      var newAnswer = answer.copyWith(
          userVote: Vote.none,
          upVotes: answer.userVote == Vote.upVote ? answer.upVotes - 1 : answer.upVotes,
          downVotes: answer.userVote == Vote.downVote ? answer.downVotes - 1 : answer.downVotes);

      return Either(val: newAnswer);
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
}
