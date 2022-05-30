package com.qelem.api.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.springframework.data.annotation.CreatedBy;

import lombok.Data;

@Data
@Entity
public class QuestionVote {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    private QuestionModel question;

    private int vote = 0;

    @ManyToOne(fetch = FetchType.LAZY)
    @CreatedBy
    private UserModel author;
}
