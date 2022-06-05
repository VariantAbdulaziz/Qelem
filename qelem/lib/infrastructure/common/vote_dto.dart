import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote_dto.freezed.dart';
part 'vote_dto.g.dart';

@freezed
class VoteDto with _$VoteDto {
  const factory VoteDto({
    required int vote,
  }) = _VoteDto;

  factory VoteDto.fromJson(Map<String, dynamic> json) =>
      _$VoteDtoFromJson(json);
}
