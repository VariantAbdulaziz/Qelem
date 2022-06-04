// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswerEntity _$$_AnswerEntityFromJson(Map<String, dynamic> json) =>
    _$_AnswerEntity(
      id: json['id'] as int,
      content: json['content'] as String,
      questionId: json['questionId'] as int,
      authorId: json['authorId'] as int,
      upVotes: json['upVotes'] as int,
      downVotes: json['downVotes'] as int,
      userVote: json['userVote'] as int,
    );

Map<String, dynamic> _$$_AnswerEntityToJson(_$_AnswerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'questionId': instance.questionId,
      'authorId': instance.authorId,
      'upVotes': instance.upVotes,
      'downVotes': instance.downVotes,
      'userVote': instance.userVote,
    };
