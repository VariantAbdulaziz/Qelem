package com.qelem.api.resources;

import com.qelem.api.controller.QuestionRestController;
import com.qelem.api.model.QuestionModel;

import org.springframework.hateoas.server.mvc.RepresentationModelAssemblerSupport;

public class QuestionResourcesAssembler 
        extends RepresentationModelAssemblerSupport<QuestionModel, QuestionResources>{
    
    public QuestionResourcesAssembler(){
        super(QuestionRestController.class, QuestionResources.class);
    }

    @Override
    protected QuestionResources instantiateModel(QuestionModel question){
        return new QuestionResources(question); 
    }


    @Override
    public QuestionResources toModel(QuestionModel question){
        return createModelWithId(question.getId(), question);
    }
}
