package com.qelem.api.resources;

import com.qelem.api.controller.UserRestController;
import com.qelem.api.model.UserModel;

import org.springframework.hateoas.server.mvc.RepresentationModelAssemblerSupport;

public class UserResourcesAssembler 
        extends RepresentationModelAssemblerSupport<UserModel, UserResources>{
    
    public UserResourcesAssembler(){
        super(UserRestController.class, UserResources.class);
    }

    @Override
    protected UserResources instantiateModel(UserModel user){
        return new UserResources(user); 
    }


    @Override
    public UserResources toModel(UserModel user){
        return createModelWithId(user.getId(), user);
    }
}
