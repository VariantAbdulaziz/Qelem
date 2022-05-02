package com.qelem.api.resources;

import com.qelem.api.controller.TagRestController;
import com.qelem.api.model.TagModel;

import org.springframework.hateoas.server.mvc.RepresentationModelAssemblerSupport;

public class TagResourcesAssembler 
        extends RepresentationModelAssemblerSupport<TagModel, TagResources>{
    
    public TagResourcesAssembler(){
        super(TagRestController.class, TagResources.class);
    }

    @Override
    protected TagResources instantiateModel(TagModel tag){
        return new TagResources(tag); 
    }


    @Override
    public TagResources toModel(TagModel tag){
        return createModelWithId(tag.getId(), tag);
    }
}
