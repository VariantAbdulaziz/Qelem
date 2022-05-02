package com.qelem.api.resources;


import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.ReportedAnswerModel;
import com.qelem.api.model.UserModel;

import org.springframework.hateoas.RepresentationModel;

import lombok.Data;

@Data
public class ReportedAnswerResources extends RepresentationModel<ReportedAnswerResources> {

    private AnswerModel answer;
    private UserModel reporter;
    

    public ReportedAnswerResources(ReportedAnswerModel reportedAnswerModel){
        this.answer = reportedAnswerModel.getAnswer();
        this.reporter = reportedAnswerModel.getReporter();
    }
}
