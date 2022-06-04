import 'package:path/path.dart';
import 'package:qelem/infrastructure/answer/answer_model_mapper.dart';
import 'package:qelem/infrastructure/auth/user_model_mapper.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';
import 'package:qelem/infrastructure/question/question_mapper.dart';
import 'package:qelem/infrastructure/user/local/user_entity.dart';
import 'package:sqflite/sqflite.dart';

import '../../../infrastructure/answer/answer_dto.dart';
import '../../../infrastructure/answer/local/answer/answer_entity.dart';
import '../../../infrastructure/auth/user_dto.dart';
import '../../../infrastructure/question/local/question/question_entity.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'grocery_database.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE question
        id INTEGER PRIMARY KEY,
        topic TEXT NOT NULL,
        content TEXT NOT NULL,
        up_votes INTEGER NOT NULL,
        down_votes INTEGER NOT NULL,
        user_vote INTEGER NOT NULL,
        created_at TEXT NOT NULL,
        updated_at TEXT NOT NULL,
        FOREIGN KEY (author_id INTEGER NOT NULL)
      ''');

    await db.execute('''
      CREATE TABLE user
        id INTEGER PRIMARY KEY,
        user_name TEXT NOT NULL,
        first_name TEXT NOT NULL,
        last_name TEXT NOT NULL,
        profile_picture TEXT NOT NULL
      ''');

    await db.execute('''
      CREATE TABLE answer
        id INTEGER PRIMARY KEY,
        content TEXT NOT NULL,
        up_votes INTEGER NOT NULL,
        down_votes INTEGER NOT NULL,
        user_vote INTEGER NOT NULL,
        created_at TEXT NOT NULL,
        updated_at TEXT NOT NULL,
        FOREIGN KEY (question_id INTEGER NOT NULL)
        FOREIGN KEY (author_id INTEGER NOT NULL)
      ''');
  }

  Future<List<QuestionEntity>> getQuestions() async {
    final Database db = await database;
    final List<Map<String, dynamic>> questionsList = await db.query("question");
    List<QuestionEntity> questionEntityList =
        questionsList.isEmpty ? [] : questionsList.map((e) => QuestionEntity.fromJson(e)).toList();
    return questionEntityList;
  }

  // get a single question
  Future<QuestionEntity?> getQuestion(int id) async {
    final Database db = await database;
    final List<Map<String, dynamic>> questionsList =
        await db.query("question", where: "id = ?", whereArgs: [id]);
    QuestionEntity? questionEntity =
        questionsList.isEmpty ? null : QuestionEntity.fromJson(questionsList.first);
    return questionEntity;
  }

  // get answers to a question
  Future<List<AnswerEntity>> getAnswers(int questionId) async {
    final Database db = await database;
    final List<Map<String, dynamic>> answersList =
        await db.query("answer", where: "question_id = ?", whereArgs: [questionId]);
    List<AnswerEntity> answerEntityList =
        answersList.isEmpty ? [] : answersList.map((e) => AnswerEntity.fromJson(e)).toList();
    return answerEntityList;
  }

  // get a single answer
  Future<AnswerEntity> getAnswer(int answerId) async {
    final Database db = await database;
    final List<Map<String, dynamic>> answersList =
        await db.query("answer", where: "id = ?", whereArgs: [answerId]);
    AnswerEntity answerEntity = AnswerEntity.fromJson(answersList.first);
    return answerEntity;
  }

  // get a single user
  Future<UserEntity?> getUser(int id) async {
    final Database db = await database;
    final List<Map<String, dynamic>> usersList =
        await db.query("user", where: "id = ?", whereArgs: [id]);
    UserEntity? userModel = usersList.isEmpty ? null : UserEntity.fromJson(usersList.first);
    return userModel;
  }

  // remove a question
  Future<void> removeQuestion(int id) async {
    final Database db = await database;
    await db.delete("question", where: "id = ?", whereArgs: [id]);
  }

  // remove an answer
  Future<void> removeAnswer(int id) async {
    final Database db = await database;
    await db.delete("answer", where: "id = ?", whereArgs: [id]);
  }

  // remove a user
  Future<void> removeUser(int id) async {
    final Database db = await database;
    await db.delete("user", where: "id = ?", whereArgs: [id]);
  }

  // remove all questions, users, and answers in case we need this
  Future<void> removeAll() async {
    final Database db = await database;
    final batch = db.batch();
    batch.delete("question");
    batch.delete("user");
    batch.delete("answer");
    await batch.commit(noResult: true);
  }

  // add multiple questions
  Future<void> addQuestions(List<QuestionDto> questionDtoList) async {
    final Database db = await database;
    await db.transaction((txn) async {
      final batch = db.batch();

      for (var e in questionDtoList) {
        final List<Map<String, dynamic>> questionsList =
            await txn.query("question", where: "id = ?", whereArgs: [e.id]);
        final List<Map<String, dynamic>> usersList =
            await txn.query("user", where: "id = ?", whereArgs: [e.author.id]);

        if (questionsList.isEmpty) {
          batch.insert("question", e.toQuestionEntity().toJson());
        } else {
          batch.update("question", e.toQuestionEntity().toJson());
        }

        if (usersList.isEmpty) {
          batch.insert("user", e.author.toUserEntity().toJson());
        } else {
          batch.update("user", e.author.toUserEntity().toJson());
        }
      }
      await batch.commit(noResult: true);
    });
  }

  // add multiple answers
  Future<void> addAnswers(List<AnswerDto> answerDtoList) async {
    final Database db = await database;
    await db.transaction((txn) async {
      final batch = db.batch();

      for (var e in answerDtoList) {
        final List<Map<String, dynamic>> answerList =
            await db.query("answer", where: "id = ?", whereArgs: [e.questionId]);
        final List<Map<String, dynamic>> usersList =
            await db.query("user", where: "id = ?", whereArgs: [e.author.id]);

        if (answerList.isEmpty) {
          batch.insert("answer", e.toAnswerEntity().toJson());
        } else {
          batch.update("answer", e.toAnswerEntity().toJson(),
              where: "id = ?", whereArgs: [e.questionId]);
        }

        if (usersList.isEmpty) {
          batch.insert("user", e.author.toUserEntity().toJson());
        } else {
          batch.update("user", e.author.toUserEntity().toJson(),
              where: "id = ?", whereArgs: [e.author.id]);
        }
      }
      await batch.commit(noResult: true);
    });
  }

  // update a question
  Future<void> updateQuestion(QuestionEntity questionEntity) async {
    final Database db = await database;
    db.update("question", questionEntity.toJson(), where: "id = ?", whereArgs: [questionEntity.id]);
  }

  // update an answer
  Future<void> updateAnswer(AnswerEntity answer) async {
    final Database db = await database;
    db.update("answer", answer.toJson(), where: "id = ?", whereArgs: [answer.id]);
  }

  // update a user
  Future<void> updateUser(UserDto userDto) async {
    final Database db = await database;
    db.update("user", userDto.toUserEntity().toJson(), where: "id = ?", whereArgs: [userDto.id]);
  }
}
