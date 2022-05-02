package com.qelem.api.resources;

import com.qelem.api.controller.AnswerRestController;
import com.qelem.api.model.AnswerModel;

import org.springframework.hateoas.server.mvc.RepresentationModelAssemblerSupport;

public class AnswerResourceAssembler 
        extends RepresentationModelAssemblerSupport<AnswerModel, AnswerResources>{
    
    public AnswerResourceAssembler(){
        super(AnswerRestController.class, AnswerResources.class);
    }

    @Override
    protected AnswerResources instantiateModel(AnswerModel question){
        return new AnswerResources(question); 
    }


    @Override
    public AnswerResources toModel(AnswerModel question){
        return createModelWithId(question.getId(), question);
    }
}
