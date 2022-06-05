package com.qelem.api.model;

import java.time.Instant;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PreRemove;
import javax.persistence.Table;
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
@Table(name = "questions")
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

    @OneToMany(mappedBy = "question", cascade = CascadeType.REMOVE)
    @Exclude
    private List<QuestionVote> votes;

    @CreatedDate
    @Column(nullable = false, updatable = false)
    private Instant createdAt;

    @LastModifiedDate
    @Column(nullable = false)
    private Instant updatedAt;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "questions_tags", joinColumns = { @JoinColumn(name = "question_id") }, inverseJoinColumns = {
            @JoinColumn(name = "tag_id", referencedColumnName = "id") })
    private Set<TagModel> tags = new HashSet<>();

    @OneToMany(mappedBy = "question", cascade = CascadeType.REMOVE)
    @Exclude
    private List<AnswerModel> answers = new ArrayList<AnswerModel>();

    public void addTag(TagModel tag) {
        tags.add(tag);
        tag.getQuestions().add(this);
    }

    @PreRemove
    private void removeTags() {
        tags.clear();
        for (TagModel tag : tags) {
            tag.getQuestions().remove(this);
        }
    }
}
