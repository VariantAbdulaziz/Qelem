package com.qelem.api.resources;

import java.util.List;

import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.UserModel;
import com.qelem.api.model.TagModel;

import org.springframework.hateoas.RepresentationModel;

import lombok.Data;

@Data
public class AdminResources extends RepresentationModel<AdminResources> {

    private String username;
    private String firstName;
    private String lasstName; 
    private String password;
    private String profilePicture;
    private String role;

    public AdminResources(UserModel Admin){
        this.username = Admin.getUsername();
        this.firstName = Admin.getFirstName();
        this.lasstName= Admin.getLastName();
        this.password = Admin.getPassword();
        this.profilePicture = Admin.getProfilePicture();
        this.role = Admin.getRole();

    }
}
