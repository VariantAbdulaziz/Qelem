package com.qelem.api.restdto;

import java.time.Instant;

import com.qelem.api.model.QuestionModel;

import lombok.Data;

@Data
public class QuestionDto {
    private Long id;
    private String topic;
    private String content;
    private UserDto author;
    private Instant createdAt;
    private Instant updatedAt;
    private Long upVotes;
    private Long downVotes;
    private Integer userVote;

    public QuestionDto(QuestionModel question, Long upVotes, Long downVotes, Integer userVote) {
        this.id = question.getId();
        this.topic = question.getTopic();
        this.content = question.getContent();
        this.author = new UserDto(question.getAuthor());
        this.createdAt = question.getCreatedAt();
        this.updatedAt = question.getUpdatedAt();
        this.upVotes = upVotes;
        this.downVotes = downVotes;
        this.userVote = userVote == null ? 0 : userVote.intValue();
    }
}
