package com.qelem.api.resources;

import com.qelem.api.controller.ReportedQuestionRestController;
import com.qelem.api.model.ReportedQuestionModel;

import org.springframework.hateoas.server.mvc.RepresentationModelAssemblerSupport;

public class ReportedQuestionResourcesAssembler 
        extends RepresentationModelAssemblerSupport<ReportedQuestionModel, ReportedQuestionResources>{
    
    public ReportedQuestionResourcesAssembler(){
        super(ReportedQuestionRestController.class, ReportedQuestionResources.class);
    }

    @Override
    protected ReportedQuestionResources instantiateModel(ReportedQuestionModel reportedQuestion){
        return new ReportedQuestionResources(reportedQuestion); 
    }


    @Override
    public ReportedQuestionResources toModel(ReportedQuestionModel reportedQuestion){
        return createModelWithId(reportedQuestion.getId(), reportedQuestion);
    }
}
