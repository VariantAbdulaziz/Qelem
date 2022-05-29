package com.qelem.api.controller;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

import java.io.IOException;

import com.qelem.api.Repo.ReportedAnswerRepository;
import com.qelem.api.Repo.ReportedQuestionRepository;
import com.qelem.api.Repo.UserRepository;
import com.qelem.api.model.RegistrationForm;
import com.qelem.api.model.UserModel;
import com.qelem.api.resources.UserResources;
import com.qelem.api.resources.UserResourcesAssembler;
import com.qelem.api.services.ReportedQuestionService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
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
    @Autowired
    private ReportedAnswerRepository ansRepo;
    @Autowired
    private ReportedQuestionRepository quesRepo;
    @Autowired
    private ReportedQuestionService reportedQuestionService;
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

    // @GetMapping()
    // public CollectionModel<AdminResources> getAdminPage() {
    // UserModel currentlyLoggedInUser = this.loggedInUser();
    // List<ReportedAnswerModel> reportedAns = (List<ReportedAnswerModel>)
    // ansRepo.findAll();
    // List<ReportedQuestionModel> reportedques = (List<ReportedQuestionModel>)
    // quesRepo.findAll();
    // List<UserModel> users = userRepository.findAllByRole("MEMBER");
    // if (currentlyLoggedInUser.getRole().equals("ADMIN")) {
    // CollectionModel<UserResources> userResources = new UserResourcesAssembler()
    // .toCollectionModel(users);
    // userResources.add(
    // linkTo(methodOn(AdminRestController.class).getAdminPage())
    // .withRel(""));
    //
    //
    //
    //
    //
    // CollectionModel<ReportedAnswerResources> reportedAnsResources = new
    // ReportedAnswerResourcesAssembler()
    // .toCollectionModel(reportedAns);
    // reportedAnsResources.add(
    // linkTo(methodOn(AdminRestController.class).getAdminPage())
    // .withRel(""));
    // CollectionModel<ReportedQuestionResources> reportedQueResources = new
    // ReportedQuestionResourcesAssembler()
    // .toCollectionModel(reportedques);
    // reportedQueResources.add(
    // linkTo(methodOn(AdminRestController.class).getAdminPage())
    // .withRel(""));

    // }

    // }

    @GetMapping("/add-admin")
    public UserResources addAdmin() {
        UserModel user = new UserModel();
        UserResources userResources = new UserResourcesAssembler()
                .toModel(user);
        userResources.add(
                linkTo(methodOn(AdminRestController.class).addAdmin())
                        .withRel("/add-admin"));
        return userResources;
    }

    @PostMapping(consumes = "application/json")
    @ResponseStatus(HttpStatus.CREATED)
    public UserModel adminAdded(RegistrationForm tempUser)
            throws IOException {
        // String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
        UserModel user = tempUser.toUser(passwordEncoder);
        user.setProfilePicture("");
        user.setRole("ADMIN");

        // String uploadDir = "src/main/resources/static/user-photos/" +
        // savedUser.getId();
        // FileUpload.saveFile(uploadDir, fileName, multipartFile);
        return userRepository.save(user);
    }

}
