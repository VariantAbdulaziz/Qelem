import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/common/vote.dart';

part 'question.freezed.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required int id,
    required String topic,
    required String content,
    required User author,
    required int upVotes,
    required int downVotes,
    required Vote userVote,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Question;
}
