package com.qelem.api.controller;


import java.io.IOException;

import com.qelem.api.model.RegistrationForm;
import com.qelem.api.model.UserModel;
import com.qelem.api.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
@RequestMapping(path = "/api/v1/admin", produces = "application/json")
public class AdminRestController {
    @Autowired
    private UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    @PostMapping(consumes = "application/json")
    @ResponseStatus(HttpStatus.CREATED)
    public UserModel adminAdded(RegistrationForm tempUser)
            throws IOException {
        UserModel user = tempUser.toUser(passwordEncoder);
        user.setProfilePicture("");
        user.setRole("ADMIN");
        return userRepository.save(user);
    }

}
