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
    return await openDatabase(path, version: 3, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE user (
        id INTEGER PRIMARY KEY,
        userName TEXT NOT NULL,
        firstName TEXT NOT NULL,
        lastName TEXT NOT NULL,
        profilePicture TEXT NOT NULL)
      ''');

    await db.execute('''
      CREATE TABLE question (
        id INTEGER PRIMARY KEY,
        topic TEXT NOT NULL,
        content TEXT NOT NULL,
        upVotes INTEGER NOT NULL,
        downVotes INTEGER NOT NULL,
        userVote INTEGER NOT NULL,
        createdAt TEXT NOT NULL,
        updatedAt TEXT NOT NULL,
        authorId INTEGER NOT NULL,
        FOREIGN KEY (authorId)
        REFERENCES user(id))
      ''');

    await db.execute('''
      CREATE TABLE answer (
        id INTEGER PRIMARY KEY,
        content TEXT NOT NULL,
        upVotes INTEGER NOT NULL,
        downVotes INTEGER NOT NULL,
        userVote INTEGER NOT NULL,
        createdAt TEXT NOT NULL,
        updatedAt TEXT NOT NULL,
        questionId INTEGER NOT NULL, 
        authorId INTEGER NOT NULL,
        FOREIGN KEY (questionId)
        REFERENCES question(id),
        FOREIGN KEY (authorId)
        REFERENCES user(id) )
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
        await db.query("answer", where: "questionId = ?", whereArgs: [questionId]);
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
  Future<UserEntity> getUser(int id) async {
    final Database db = await database;
    final List<Map<String, dynamic>> usersList =
        await db.query("user", where: "id = ?", whereArgs: [id]);
    UserEntity userModel = UserEntity.fromJson(usersList.first);
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
      final batch = txn.batch();

      for (var e in questionDtoList) {
        batch.insert("question", e.toQuestionEntity().toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
        batch.insert("user", e.author.toUserEntity().toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
      }
      await batch.commit(noResult: true);
    });
  }

  // add multiple answers
  Future<void> addAnswers(List<AnswerDto> answerDtoList) async {
    final Database db = await database;
    await db.transaction((txn) async {
      final batch = txn.batch();

      for (var e in answerDtoList) {
        batch.insert("answer", e.toAnswerEntity().toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
        batch.insert("user", e.author.toUserEntity().toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
      }
      await batch.commit(noResult: true);
    });
  }

  // update a question
  Future<void> updateQuestion(QuestionEntity questionEntity) async {
    final Database db = await database;
    await db.insert("question", questionEntity.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  // update an answer
  Future<void> updateAnswer(AnswerEntity answer) async {
    final Database db = await database;
    await db.insert("answer", answer.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  // update a user
  Future<void> updateUser(UserDto userDto) async {
    final Database db = await database;
    await db.insert("user", userDto.toUserEntity().toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }
}
