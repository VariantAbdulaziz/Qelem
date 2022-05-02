package com.qelem.api.resources;

import com.qelem.api.controller.AdminRestController;
import com.qelem.api.model.UserModel;

import org.springframework.hateoas.server.mvc.RepresentationModelAssemblerSupport;

public class AdminResourceAssembler 
        extends RepresentationModelAssemblerSupport<UserModel, AdminResources>{
    
    public AdminResourceAssembler(){
        super(AdminRestController.class, AdminResources.class);
    }

    @Override
    protected AdminResources instantiateModel(UserModel question){
        return new AdminResources(question); 
    }


    @Override
    public AdminResources toModel(UserModel question){
        return createModelWithId(question.getId(), question);
    }
}
