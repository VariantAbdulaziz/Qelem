package com.qelem.api.controller;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Optional;

import com.qelem.api.Repo.UserRepository;
import com.qelem.api.model.RegistrationForm;
import com.qelem.api.model.UserModel;
import com.qelem.api.resources.UserResources;
import com.qelem.api.resources.UserResourcesAssembler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.hateoas.CollectionModel;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.mvc.WebMvcLinkBuilder;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import net.minidev.json.parser.ParseException;

@RestController
@RequestMapping(path = "/api/v1/users", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class UserRestController {
    private final UserRepository userRepository;
    @Autowired
    private final PasswordEncoder passwordEncoder;

    private UserModel loggedInUser() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
        } else {
            username = principal.toString();
        }

        // finding the user from the user database based on the principal's name
        UserModel user = userRepository.findByUsername(username);
        return user;
    }

    /**
     * lists all the users in the system.
     * 
     * @param model
     * @return
     */
    @GetMapping(params = "all")
    public CollectionModel<UserResources> allUsers() {
        PageRequest pageable = PageRequest.of(0, 12,
                Sort.by("id").descending());
        List<UserModel> userModels = userRepository.findAll(pageable).getContent();
        CollectionModel<UserResources> userResources = new UserResourcesAssembler()
                .toCollectionModel(userModels);
        userResources.add(
                linkTo(methodOn(UserRestController.class).allUsers())
                        .withRel("all"));
        return userResources;

    }

    @GetMapping("/{id}")
    public EntityModel<UserModel> userById(@PathVariable("id") Long id) {
        Optional<UserModel> optUser = userRepository.findById(id);
        if (!optUser.isPresent()) {
            return null;
        }
        EntityModel<UserModel> userResource = EntityModel.of(optUser.get());
        WebMvcLinkBuilder linkTo = linkTo(methodOn(this.getClass()).userById(id));
        userResource.add(linkTo.withRel(String.format("Users  with id %s", id)));

        return userResource;
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public UserModel postUser(@RequestBody RegistrationForm registrationForm) throws ParseException {
        UserModel user = registrationForm.toUser(passwordEncoder);
        user.setProfilePicture(null);
        user.setRole("MEMBER");
        return userRepository.save(user);
    }

    @PutMapping(path = "/{id}", consumes = "application/json")
    public UserModel putUser(
            @PathVariable("id") Long id,
            @RequestBody UserModel userModel) {
        userModel.setId(id);
        return userRepository.save(userModel);
    }

    @PatchMapping(path = "/{id}", consumes = "application/json")
    public UserModel updateUser(@PathVariable("id") Long id,
            @RequestBody UserModel user) {

        UserModel userModel = userRepository.findById(id).get();
        if (user.getUsername() != null) {
            userModel.setUsername(user.getUsername());
        }
        if (user.getPassword() != null) {
            userModel.setPassword(user.getPassword());
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
        if (user.getVote() != null) {
            userModel.setVote(user.getVote());
        }
        return userRepository.save(userModel);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(code = HttpStatus.NO_CONTENT)
    public void deleteUser(@PathVariable("id") Long id) {
        try {
            userRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {
        }
    }
}