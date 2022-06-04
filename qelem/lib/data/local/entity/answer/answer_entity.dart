import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../infrastructure/common/time_stamp_converter.dart';

part 'answer_entity.freezed.dart';
part 'answer_entity.g.dart';

@freezed
class AnswerEntity with _$AnswerEntity {
  const factory AnswerEntity({
    required int id,
    required String content,
    required int questionId,
    required int authorId,
    required int upVotes,
    required int downVotes,
    required int userVote,
    @TimestampConverter() required DateTime createdAt,
    @TimestampConverter() required DateTime updatedAt
  }) = _AnswerEntity;

  factory AnswerEntity.fromJson(Map<String, dynamic> json) =>
      _$AnswerEntityFromJson(json);
}