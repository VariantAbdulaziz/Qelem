package com.qelem.api.controller;

import java.util.List;

import com.qelem.api.model.UserModel;
import com.qelem.api.repository.UserRepository;
import com.qelem.api.restdto.UserDto;
import com.qelem.api.util.UnauthorizedAccess;
import com.qelem.api.util.UserNotFoundException;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping(path = "/api/v1/users", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
@Slf4j
public class UserRestController {
    private final UserRepository userRepository;

    private UserModel loggedInUser() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
        } else {
            username = principal.toString();
        }

        // finding the user from the user database based on the principal's name
        UserModel user = userRepository.findByUsername(username)
                .orElseThrow(() -> new UnauthorizedAccess("User not found"));
        return user;
    }

    @GetMapping(params = "all")
    public List<UserDto> allUsers() {
        PageRequest pageable = PageRequest.of(0, 12,
                Sort.by("id").descending());
        List<UserModel> userModels = userRepository.findAll(pageable).getContent();

        return userModels.stream().map(UserDto::new).collect(java.util.stream.Collectors.toList());

    }

    @GetMapping("/{id}")
    public UserDto userById(@PathVariable("id") Long id) {
        UserModel userModel = userRepository.findById(id)
                .orElseThrow(() -> new UserNotFoundException("User not found"));

        return new UserDto(userModel);
    }

    @PatchMapping(path = "/{id}", consumes = "application/json")
    public UserModel updateUser(@PathVariable("id") Long id,
            @RequestBody UserModel user) {
        var isAuthorized = loggedInUser().getId().equals(id) || loggedInUser().isAdmin();

        if (!isAuthorized) {
            log.error("User with id {} is not authorized to update user with id {}", loggedInUser().getId(), id);
            throw new UnauthorizedAccess("User is not authorized to update user");
        }

        UserModel userModel = userRepository.findById(id).get();
        if (user.getUsername() != null) {
            userModel.setUsername(user.getUsername());
        }
        if (user.getFirstName() != null) {
            userModel.setFirstName(user.getFirstName());
        }
        if (user.getLastName() != null) {
            userModel.setLastName(user.getLastName());
        }
        if (user.getRole() != null) {
            userModel.setRole(user.getRole());
        }
        if (user.getProfilePicture() != null) {
            userModel.setProfilePicture(user.getProfilePicture());
        }

        return userRepository.save(userModel);
    }

    @PatchMapping(path = "changePassword/{id}", consumes = "application/json")
    public UserModel changePassword(@PathVariable("id") Long id,
            @RequestBody ChangePasswordModel user) throws PasswordException {

        UserModel userModel = userRepository.findById(id).get();
        if ( passwordEncoder.encode(user.getOldPassword())!= userModel.getPassword()) {
            throw new PasswordException("Password doesn't match!");
        }
        userModel.setPassword(passwordEncoder.encode(user.getNewPassword()));
        return userRepository.save(userModel);
    }

    @DeleteMapping("/{id}")
    public void deleteUser(@PathVariable("id") Long id) {
        UserModel user = loggedInUser();
        UserModel userModel = userRepository.findById(id)
                .orElseThrow(() -> new UserNotFoundException("User not found"));

        // AUTHORIZATION : only admin can delete other users, or the user himself can
        // delete himself
        if (!user.equals(userModel) && !user.isAdmin()) {
            log.error("User with id {} is not authorized to update user with id {}", loggedInUser().getId(), id);
            throw new UnauthorizedAccess("User is not authorized to delete user");
        }

        userRepository.deleteById(id);
    }
}