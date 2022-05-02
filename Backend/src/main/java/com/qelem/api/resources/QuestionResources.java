package com.qelem.api.resources;

import java.util.List;

import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.QuestionModel;
import com.qelem.api.model.TagModel;

import org.springframework.hateoas.RepresentationModel;

import lombok.Data;

@Data
public class QuestionResources extends RepresentationModel<QuestionResources> {

    private String topic;
    private String content;
    private String status; 
    private TagModel tags;
    private List<AnswerModel> answer;

    public QuestionResources(QuestionModel question){
        this.topic = question.getTopic();
        this.content = question.getContent();
        this.status = question.getStatus();
        this.tags = question.getTags();
        this.answer = question.getAnswer();
    }
}
