package com.qelem.api.resources;

import com.qelem.api.controller.VoteRestController;
import com.qelem.api.model.VoteModel;

import org.springframework.hateoas.server.mvc.RepresentationModelAssemblerSupport;

public class VoteResourcesAssembler 
        extends RepresentationModelAssemblerSupport<VoteModel, VoteResources>{
    
    public VoteResourcesAssembler(){
        super(VoteRestController.class, VoteResources.class);
    }

    @Override
    protected VoteResources instantiateModel(VoteModel vote){
        return new VoteResources(vote); 
    }


    @Override
    public VoteResources toModel(VoteModel vote){
        return createModelWithId(vote.getId(), vote);
    }
}
