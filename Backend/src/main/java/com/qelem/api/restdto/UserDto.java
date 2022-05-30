package com.qelem.api.restdto;

import com.qelem.api.model.UserModel;

import lombok.Data;

@Data
public class UserDto {
    private Long id;
    private String username;
    private String firstName;
    private String lastName;
    private String role;
    private String profilePicture;

    public UserDto(UserModel author) {
        this.id = author.getId();
        this.username = author.getUsername();
        this.firstName = author.getFirstName();
        this.lastName = author.getLastName();
        this.role = author.getRole();
        this.profilePicture = author.getProfilePicture();
    }
}
