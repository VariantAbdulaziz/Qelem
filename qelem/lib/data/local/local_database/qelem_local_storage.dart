import 'package:path/path.dart';
import 'package:qelem/data/local/entity/answer/answer_entity.dart';
import 'package:qelem/data/local/entity/question/question_entity.dart';
import 'package:qelem/data/local/entity/user/user_entity.dart';
import 'package:qelem/infrastructure/answer/answer_model_mapper.dart';
import 'package:qelem/infrastructure/auth/user_model_mapper.dart';
import 'package:qelem/infrastructure/question/question_dto.dart';
import 'package:qelem/infrastructure/question/question_mapper.dart';
import 'package:sqflite/sqflite.dart';

import '../../../infrastructure/answer/answer_dto.dart';

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
    final List<Map<String, dynamic>> questionsList = await db.query("question", where: "id = ?", whereArgs: [id]);
    QuestionEntity? questionEntity = questionsList.isEmpty ? null : QuestionEntity.fromJson(questionsList.first);
    return questionEntity;
  }


  // get answers to a question
  Future<List<AnswerEntity>> getAnswers(int questionId) async {
    final Database db = await database;
    final List<Map<String, dynamic>> answersList = await db.query("answer", where: "question_id = ?", whereArgs: [questionId]);
    List<AnswerEntity> answerEntityList = answersList.isEmpty ? [] : answersList.map((e) => AnswerEntity.fromJson(e)).toList();
    return answerEntityList;
  }

  // get a single answer
  Future<AnswerEntity?> getAnswer(int answerId) async {
    final Database db = await database;
    final List<Map<String, dynamic>> answersList = await db.query("answer", where: "id = ?", whereArgs: [answerId]);
    AnswerEntity? answerEntity = answersList.isEmpty ? null : AnswerEntity.fromJson(answersList.first);
    return answerEntity;
  }


  // get a single user
  // todo: should this throw an exception or return null?
  Future<UserEntity?> getUser(int id) async {
    final Database db = await database;
    final List<Map<String, dynamic>> usersList = await db.query("user", where: "id = ?", whereArgs: [id]);
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


  // remove all questions, users, and answers
  Future<void> removeAll() async {
    final Database db = await database;
    final batch = db.batch();
    batch.delete("question");
    batch.delete("user");
    batch.delete("answer");
    await batch.commit(noResult: true);
  }


  Future<void> addQuestion(QuestionDto questionDto, AnswerDto answerDto) async {
    final Database db = await database;

    await db.transaction((txn) async {
      // remove it the user, question, and answer exist
      await txn.delete("question", where: "id = ?", whereArgs: [questionDto.id]);
      await txn.delete("user", where: "id = ?", whereArgs: [questionDto.author.id]);
      await txn.delete("answer", where: "id = ?", whereArgs: [answerDto.id]);

      // insert the question, user, and answer
      await txn.insert("question", questionDto.toQuestionEntity().toJson());
      await txn.insert("user", questionDto.author.toUserEntity().toJson());
      await txn.insert("answer", answerDto.toAnswerEntity().toJson());

    });
  }
}
