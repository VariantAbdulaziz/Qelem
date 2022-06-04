import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_entity.freezed.dart';
part 'question_entity.g.dart';

@freezed
class QuestionEntity with _$QuestionEntity {

  const factory QuestionEntity({
    required int id,
    required String topic,
    required String content,
    required int author,
    required int upVotes,
    required int downVotes,
    required int userVote,
  }) = _QuestionEntity;

  factory QuestionEntity.fromJson(Map<String, dynamic> json) =>
      _$QuestionEntityFromJson(json);

}