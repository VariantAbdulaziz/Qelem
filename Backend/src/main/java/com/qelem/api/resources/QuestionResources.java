package com.qelem.api.resources;

import java.util.List;

import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.QuestionModel;
import com.qelem.api.model.TagModel;

import org.springframework.hateoas.RepresentationModel;

import lombok.Data;

@Data
public class QuestionResources extends RepresentationModel<QuestionResources> {

    private Long id;
    private String topic;
    private String content;
    private String status; 
    private String tag = null;
    private List<AnswerModel> answers;

    public QuestionResources(QuestionModel question){
        this.id = question.getId();
        this.topic = question.getTopic();
        this.content = question.getContent();
        this.status = question.getStatus();
        if(question.getTags() != null) {
            this.tag = question.getTags().getTag();
        }
        this.answers = question.getAnswer();
    }
}
