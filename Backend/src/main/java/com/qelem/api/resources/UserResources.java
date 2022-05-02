package com.qelem.api.resources;

import java.util.List;

import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.UserModel;
import com.qelem.api.model.TagModel;
import com.qelem.api.model.VoteModel;

import org.springframework.hateoas.RepresentationModel;

import lombok.Data;

@Data
public class UserResources extends RepresentationModel<UserResources> {

    private String username;
    private String password;
    private String firstName;
    private String lastName;
    private String role;
    private String profilePicture;
    private List<VoteModel> vote;


    public UserResources(UserModel user) {
        this.username = user.getUsername();
        this.password = user.getPassword();
        this.firstName = user.getFirstName();
        this.lastName = user.getLastName();
        this.role = user.getRole();
        this.profilePicture = user.getProfilePicture();
        this.vote = user.getVote();

    }
}
