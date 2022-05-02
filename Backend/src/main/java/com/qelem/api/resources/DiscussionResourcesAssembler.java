package com.qelem.api.resources;

import com.qelem.api.controller.DiscussionRestController;
import com.qelem.api.model.DiscussionModel;

import org.springframework.hateoas.server.mvc.RepresentationModelAssemblerSupport;

public class DiscussionResourcesAssembler 
        extends RepresentationModelAssemblerSupport<DiscussionModel, DiscussionResources>{
    
    public DiscussionResourcesAssembler(){
        super(DiscussionRestController.class, DiscussionResources.class);
    }

    @Override
    protected DiscussionResources instantiateModel(DiscussionModel discussion){
        return new DiscussionResources(discussion); 
    }


    @Override
    public DiscussionResources toModel(DiscussionModel discussion){
        return createModelWithId(discussion.getId(), discussion);
    }
}
