package com.qelem.api.restdto;

import java.time.Instant;

import javax.validation.constraints.NotBlank;

import com.qelem.api.model.AnswerModel;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AnswerDto {
    private Long id;
    @NotBlank
    private String content;
    private Long questionId;
    private UserDto author;
    private Long upVotes;
    private Long downVotes;
    private Integer userVote;
    private Instant createdAt;
    private Instant updatedAt;

    public AnswerDto(AnswerModel answer, Long upVotes, Long downVotes, Integer userVote) {
        this.id = answer.getId();
        this.content = answer.getContent();
        this.questionId = answer.getQuestion().getId();
        this.author = new UserDto(answer.getAuthor());
        this.upVotes = upVotes;
        this.downVotes = downVotes;
        this.userVote = userVote == null ? 0 : userVote.intValue();
        this.createdAt = answer.getCreatedAt();
        this.updatedAt = answer.getUpdatedAt();
    }
}
