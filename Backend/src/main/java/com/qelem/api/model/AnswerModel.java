package com.qelem.api.model;

import java.time.Instant;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import lombok.Data;
import lombok.ToString.Exclude;

@Data
@Entity
@JsonIgnoreProperties({ "question", "vote" })
@EntityListeners(AuditingEntityListener.class)
public class AnswerModel {
    @Id
    @GeneratedValue
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    private QuestionModel question;

    @NotBlank(message = "Content can't be blank")
    private String content;

    @CreatedBy
    @ManyToOne(fetch = FetchType.LAZY)
    private UserModel author;

    @OneToMany(mappedBy = "answer", cascade = CascadeType.REMOVE)
    @Exclude
    private List<AnswerVote> votes;

    @CreatedDate
    @Column(nullable = false, updatable = false)
    private Instant createdAt;

    @LastModifiedDate
    @Column(nullable = false)
    private Instant updatedAt;

    @OneToOne(cascade = CascadeType.REMOVE)
    @Exclude
    private ReportedAnswerModel reportedAnswer;

}
