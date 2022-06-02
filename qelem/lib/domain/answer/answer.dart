import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qelem/domain/auth/user.dart';
import 'package:qelem/domain/common/vote.dart';

part 'answer.freezed.dart';

@freezed
class Answer with _$Answer {
  const factory Answer({
    required int id,
    required String content,
    required int questionId,
    required User author,
    required int upVotes,
    required int downVotes,
    required Vote userVote,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Answer;
}
