import 'package:qelem/domain/common/vote.dart';
import 'package:qelem/infrastructure/common/vote_dto.dart';

extension VoteDtoToDomainMapper on VoteDto {
  Vote toVote() {
    final userVote = vote == 0
        ? Vote.none
        : vote > 0
            ? Vote.upVote
            : Vote.downVote;
    return userVote;
  }
}

extension VoteDomainToDtoMapper on Vote {
  VoteDto toVoteDto() {
    final vote = this == Vote.none
        ? 0
        : this == Vote.upVote
            ? 1
            : -1;
    return VoteDto(vote: vote);
  }
}
