package com.qelem.api.controller;

import com.qelem.api.file.FileStorageConfiguration;
import com.qelem.api.file.StorageService;
import com.qelem.api.model.ChangePasswordForm;
import com.qelem.api.model.UserModel;
import com.qelem.api.repository.UserRepository;
import com.qelem.api.restdto.UserDto;
import com.qelem.api.util.PasswordException;
import com.qelem.api.util.UnauthorizedAccess;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping(path = "/api/v1/profile", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
@Slf4j
public class ProfileRestController {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final StorageService storageService;
    FileStorageConfiguration configuration;

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

    /**
     * Changes the currently logged in user's password.
     */
    @PatchMapping(path = "/change-password", consumes = "application/json")
    public UserDto changePassword(@RequestBody ChangePasswordForm changePasswordForm) {
        UserModel user = userRepository.getById(loggedInUser().getId());
        log.info("Changing password for user {}, password form {}", user.getUsername(), changePasswordForm);

        if (!passwordEncoder.matches(changePasswordForm.getCurrentPassword(), user.getPassword())) {
            throw new PasswordException("Password doesn't match!");
        }
        user.setPassword(passwordEncoder.encode(changePasswordForm.getNewPassword()));
        user = userRepository.save(user);

        log.info("Password changed for user {}", user.getUsername());
        return new UserDto(user);
    }

    /**
     * Updates the currently logged in user's profile.
     */
    @PatchMapping(consumes = { MediaType.MULTIPART_FORM_DATA_VALUE })
    public UserDto updateProfile(
            @RequestParam(value = "firstName", required = false) String firstName,
            @RequestParam(value = "lastName", required = false) String lastName,
            @RequestPart(value = "profilePicture", required = false) MultipartFile file) {
        UserModel user = loggedInUser();
        log.info("Updating profile for user {}, firstName {}, lastName {}, file {}", user.getUsername(), firstName,
                lastName, file);

        if (firstName != null) {
            user.setFirstName(firstName);
        }
        if (lastName != null) {
            user.setLastName(lastName);
        }

        if (file != null && !file.isEmpty()) {
            var fileName = storageService.store(file);
            user.setProfilePicture(fileName);
        }

        user = userRepository.save(user);
        return new UserDto(user);
    }

    @DeleteMapping()
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void deleteAccount() {
        UserModel user = loggedInUser();
        log.info("Delete user with id : {} request", user.getId());

        userRepository.delete(user);
        log.info("User deleted : {}", user);
    }

    @GetMapping()
    public UserDto getProfile() {
        var user = loggedInUser();
        return new UserDto(user);
    }

}
