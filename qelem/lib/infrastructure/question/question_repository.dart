import 'package:qelem/infrastructure/question/question_api.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';
import 'package:qelem/infrastructure/question/question_form_dto.dart';
import 'package:qelem/infrastructure/question/question_mapper.dart';

import '../../common/Vote.dart';
import '../../domain/question/question.dart';
import '../../util/either.dart';
import '../../util/error.dart';
import '../common/qelem_http_exception.dart';

class QuestionRepository {
  final QuestionApi questionApi;

  QuestionRepository(this.questionApi);

  // get all questions
  Future<Either<List<Question>>> getQuestion() async {
    try {
      List<QuestionDto> questionsDto = await questionApi.getAllQuestions();
      return Either(val: questionsDto.map((e) => e.toQuestion()).toList());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    }
  }

  // get question by id
  Future<Either<Question>> getQuestionById(int id) async {
    try {
      QuestionDto questionDto = await questionApi.getQuestionById(id);
      return Either(val: questionDto.toQuestion());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    }
  }

  // create question
  Future<Either<Question>> createQuestion(Question question) async {
    try {
      QuestionDto questionDto = await questionApi.createQuestion(
          QuestionFormDto(topic: question.topic, content: question.content));
      return Either(val: questionDto.toQuestion());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    }
  }

  // delete question
  Future<Either<void>> deleteQuestion(int id) async {
    try {
      await questionApi.deleteQuestion(id);
      return Either(val: null);
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    }
  }

  // update question
  Future<Either<Question>> updateQuestion(Question question) async {
    try {
      QuestionDto questionDto = await questionApi.updateQuestion(
          QuestionFormDto(topic: question.topic, content: question.content),
          question.id);
      return Either(val: questionDto.toQuestion());
    } on QHttpException catch (e) {
      return Either(error: Error(e.message));
    }
  }

  // upVote question
  Future<Either<Question>> upvoteQuestion(Question question) async {
    int prevVote;
    if (question.userVote == Vote.upVote) {
      prevVote = 1;
    } else if (question.userVote == Vote.downVote) {
      prevVote = -1;
    } else {
      prevVote = 0;
    }

    if (question.userVote == Vote.upVote) {
      try {
        await questionApi.unvoteQuestion(question.id);

        return Either(
            val: Question(
                id: question.id,
                topic: question.topic,
                content: question.content,
                upVotes: question.upVotes - prevVote, // prevVote = 1
                userVote: Vote.none,
                downVotes: question.downVotes,
                author: question.author));
      } on QHttpException catch (e) {
        return Either(error: Error(e.message));
      }
    } else {
      try {
        await questionApi.upVoteQuestion(question.id);

        return Either(
            val: Question(
                id: question.id,
                topic: question.topic,
                content: question.content,
                upVotes: question.upVotes + 1,
                userVote: Vote.upVote,
                downVotes: question.downVotes + prevVote, // prevVote = -1 or 0
                author: question.author));
      } on QHttpException catch (e) {
        return Either(error: Error(e.message));
      }
    }
  }

  // downVote question
  Future<Either<Question>> downVoteQuestion(Question question) async {
    int prevVote;
    if (question.userVote == Vote.upVote) {
      prevVote = 1;
    } else if (question.userVote == Vote.downVote) {
      prevVote = -1;
    } else {
      prevVote = 0;
    }

    if (question.userVote == Vote.downVote) {
      try {
        await questionApi.unvoteQuestion(question.id);

        return Either(
            val: Question(
                id: question.id,
                topic: question.topic,
                content: question.content,
                upVotes: question.upVotes,
                userVote: Vote.none,
                downVotes: question.downVotes + prevVote, // prevVote == -1 or 0
                author: question.author));
      } on QHttpException catch (e) {
        return Either(error: Error(e.message));
      }
    } else {
      try {
        await questionApi.downvoteQuestion(question.id);

        return Either(
            val: Question(
                id: question.id,
                topic: question.topic,
                content: question.content,
                upVotes: question.upVotes - prevVote, // prevVote == 1 or 0
                userVote: Vote.downVote,
                downVotes: question.downVotes + 1,
                author: question.author));
      } on QHttpException catch (e) {
        return Either(error: Error(e.message));
      }
    }
  }
}
