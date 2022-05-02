package com.qelem.api.resources;


import com.qelem.api.model.QuizModel;

import org.springframework.hateoas.RepresentationModel;

import lombok.Data;

@Data
public class QuizResources extends RepresentationModel<QuizResources> {

    private String answer;
    private String question;

    public QuizResources(QuizModel quiz){
        this.answer = quiz.getAnswer();
        this.question = quiz.getQuestion();
    }
}
