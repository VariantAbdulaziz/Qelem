// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionEntity _$$_QuestionEntityFromJson(Map<String, dynamic> json) =>
    _$_QuestionEntity(
      id: json['id'] as int,
      topic: json['topic'] as String,
      content: json['content'] as String,
      authorId: json['authorId'] as int,
      upVotes: json['upVotes'] as int,
      downVotes: json['downVotes'] as int,
      userVote: json['userVote'] as int,
    );

Map<String, dynamic> _$$_QuestionEntityToJson(_$_QuestionEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topic': instance.topic,
      'content': instance.content,
      'authorId': instance.authorId,
      'upVotes': instance.upVotes,
      'downVotes': instance.downVotes,
      'userVote': instance.userVote,
    };
