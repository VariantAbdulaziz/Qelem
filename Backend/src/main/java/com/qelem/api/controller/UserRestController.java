package com.qelem.api.controller;

import com.qelem.api.file.FileStorageConfiguration;
import com.qelem.api.file.StorageService;
import com.qelem.api.model.ChangePasswordModel;
import com.qelem.api.model.UserModel;
import com.qelem.api.repository.UserRepository;
import com.qelem.api.restdto.UserDto;
import com.qelem.api.util.PasswordException;
import com.qelem.api.util.UnauthorizedAccess;
import com.qelem.api.util.UserNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.MediaType;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping(path = "/api/v1/users", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
@Slf4j
public class UserRestController {
    private final UserRepository userRepository;
    @Autowired
    private final PasswordEncoder passwordEncoder;
    @Autowired
    private final StorageService storageService;
    @Autowired
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

    @PatchMapping(path = "/changePassword/{id}", consumes = "application/json")
    public UserModel changePassword(@PathVariable("id") Long id,
                                    @RequestBody ChangePasswordModel user) {

        UserModel userModel = userRepository.findById(id).get();

        if (passwordEncoder.encode(user.getOldPassword()).matches(userModel.getPassword())) {
            throw new PasswordException("Password doesn't match!");
        }
        userModel.setPassword(passwordEncoder.encode(user.getNewPassword()));
        UserModel res = userRepository.save(userModel);
        res.setPassword("");
        return res;
    }

    @PatchMapping(path = "/{id}", consumes = "application/json")
    public UserModel updateUser(@PathVariable("id") Long id,
                                @RequestBody ChangePasswordModel user) {
        var isAuthorized = loggedInUser().getId().equals(id) || loggedInUser().isAdmin();

        if (!isAuthorized) {
            log.error("User with id {} is not authorized to update user with id {}", loggedInUser().getId(), id);
            throw new UnauthorizedAccess("User is not authorized to update user");
        }

        UserModel userModel = userRepository.findById(id).get();
        System.out.println("from database: " + userModel.getPassword());

        if (passwordEncoder.encode(user.getOldPassword()).matches(userModel.getPassword())) {
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

    @PatchMapping(path = "/{id}", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
    public UserModel updateUser(
            @PathVariable("id") Long id,
            @RequestParam(value = "firstName", required = false) String firstName,
            @RequestParam(value = "lastName", required = false) String lastName,
            @RequestPart(value = "profile", required = false) MultipartFile file) {

        UserModel user = new UserModel();
        user.setId(id);
        user.setFirstName(firstName);
        user.setLastName(lastName);

        return updateUserHelper(id, user, file);

    }

    public UserModel updateUserHelper(Long id, UserModel user, MultipartFile file) {
        var isAuthorized = loggedInUser().getId().equals(id) || loggedInUser().getRole().equals("ADMIN");

        if (!isAuthorized) {
            log.error("User with id {} is not authorized to update user with id {}", loggedInUser().getId(), id);
            throw new UnauthorizedAccess("User is not authorized to update user");
        }

        if (file != null && !file.isEmpty()) {
            var fileName = storageService.store(file);
            user.setProfilePicture(fileName);
        }

        UserModel userModel = userRepository.findById(id).get();

        if (user.getFirstName() != null && !user.getFirstName().isEmpty()) {
            userModel.setFirstName(user.getFirstName());
        }
        if (user.getLastName() != null && !user.getLastName().isEmpty()) {
            userModel.setLastName(user.getLastName());
        }
        if (user.getRole() != null && !user.getRole().isEmpty()) {
            userModel.setRole(user.getRole());
        }
        if (user.getProfilePicture() != null && !user.getProfilePicture().isEmpty()) {
            userModel.setProfilePicture(user.getProfilePicture());
        }

        // The user model doesn't have vote property. Why did you add it

        // if (user.getVote() != null && !user.getVote().isEmpty()) {
        //     userModel.setVote(user.getVote());
        // }

        UserModel res = userRepository.save(userModel);
        res.setPassword("");
        return res;
    }
}