package com.qelem.api.model;

import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotBlank;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import lombok.Data;
import lombok.ToString.Exclude;

@Entity
@Data
@EntityListeners(AuditingEntityListener.class)
public class QuestionModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @NotBlank(message = "The topic can't be blank")
    String topic;

    @NotBlank(message = "The content can't be blank")
    String content;

    @CreatedBy
    @ManyToOne(fetch = FetchType.LAZY)
    UserModel author;

    @ManyToOne(fetch = FetchType.LAZY)
    private TagModel tag;

    @OneToMany(mappedBy = "question", cascade = CascadeType.REMOVE)
    @Exclude
    private List<QuestionVote> votes;

    @CreatedDate
    @Column(nullable = false, updatable = false)
    private Instant createdAt;

    @LastModifiedDate
    @Column(nullable = false)
    private Instant updatedAt;

    @OneToMany(mappedBy = "question", cascade = CascadeType.REMOVE)
    @Exclude
    private List<AnswerModel> answers = new ArrayList<AnswerModel>();
}
