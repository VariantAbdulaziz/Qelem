package com.qelem.api.resources;

import java.util.List;

import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.QuestionModel;
import com.qelem.api.model.ReportedAnswerModel;
import com.qelem.api.model.UserModel;
import com.qelem.api.model.VoteModel;

import org.springframework.hateoas.RepresentationModel;

import lombok.Data;

@Data
public class AnswerResources extends RepresentationModel<AnswerResources> {

    private QuestionModel question;
    private String content;
    private UserModel author; 
    private List<VoteModel> vote;
    private ReportedAnswerModel reportedAnswerModel;

    public AnswerResources(AnswerModel answer){
        this.question = answer.getQuestion();
        this.content = answer.getContent();
        this.author = answer.getAuthor();
        this.vote = answer.getVote();
        this.reportedAnswerModel = answer.getReportedAnswer();
    }
}
