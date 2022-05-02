package com.qelem.api.resources;


import com.qelem.api.model.QuestionModel;
import com.qelem.api.model.ReportedQuestionModel;
import com.qelem.api.model.UserModel;

import org.springframework.hateoas.RepresentationModel;

import lombok.Data;

@Data
public class ReportedQuestionResources extends RepresentationModel<ReportedQuestionResources> {

    private QuestionModel question;
    private UserModel reporter;
    

    public ReportedQuestionResources(ReportedQuestionModel reportedQuestionModel){
        this.question = reportedQuestionModel.getQuestion();
        this.reporter = reportedQuestionModel.getReporter();
    }
}
