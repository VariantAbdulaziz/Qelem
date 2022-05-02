package com.qelem.api.resources;

import com.qelem.api.controller.ReportedAnswerRestController;
import com.qelem.api.model.ReportedAnswerModel;

import org.springframework.hateoas.server.mvc.RepresentationModelAssemblerSupport;

public class ReportedAnswerResourcesAssembler 
        extends RepresentationModelAssemblerSupport<ReportedAnswerModel, ReportedAnswerResources>{
    
    public ReportedAnswerResourcesAssembler(){
        super(ReportedAnswerRestController.class, ReportedAnswerResources.class);
    }

    @Override
    protected ReportedAnswerResources instantiateModel(ReportedAnswerModel reportedAnswer){
        return new ReportedAnswerResources(reportedAnswer); 
    }


    @Override
    public ReportedAnswerResources toModel(ReportedAnswerModel reportedAnswer){
        return createModelWithId(reportedAnswer.getId(), reportedAnswer);
    }
}
