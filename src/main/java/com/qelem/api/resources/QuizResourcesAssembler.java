package com.qelem.api.resources;

import com.qelem.api.controller.QuizRestController;
import com.qelem.api.model.QuizModel;

import org.springframework.hateoas.server.mvc.RepresentationModelAssemblerSupport;

public class QuizResourcesAssembler 
        extends RepresentationModelAssemblerSupport<QuizModel, QuizResources>{
    
    public QuizResourcesAssembler(){
        super(QuizRestController.class, QuizResources.class);
    }

    @Override
    protected QuizResources instantiateModel(QuizModel quiz){
        return new QuizResources(quiz); 
    }


    @Override
    public QuizResources toModel(QuizModel quiz){
        return createModelWithId(quiz.getId(), quiz);
    }
}
