package com.qelem.api.controller;

import java.util.List;
import java.util.Optional;

import javax.annotation.Resource;
import javax.annotation.Resources;
import javax.validation.Valid;

import com.qelem.api.Repo.DiscussionRepository;
import com.qelem.api.model.DiscussionModel;
import com.qelem.api.resources.DiscussionResources;
import com.qelem.api.resources.DiscussionResourcesAssembler;
import com.qelem.api.resources.DiscussionResourcesAssembler;

import org.hibernate.annotations.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.hateoas.CollectionModel;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.server.mvc.WebMvcLinkBuilder;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping(path = "/api/v1/discussions", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class DiscussionRestController {
    private final DiscussionRepository discussionRepository;

    /**
     * lists all the discussions in the system.
     * 
     * @param model
     * @return
     */
    @GetMapping(params = "all")
    public CollectionModel<DiscussionResources> allDiscussions() {
        PageRequest pageable = PageRequest.of(0, 12,
                Sort.by("id").descending());
        List<DiscussionModel> discussionModels = discussionRepository.findAll(pageable).getContent();
        CollectionModel<DiscussionResources> discussionResources = new DiscussionResourcesAssembler()
                .toCollectionModel(discussionModels);
        discussionResources.add(
                linkTo(methodOn(DiscussionRestController.class).allDiscussions())
                        .withRel("all"));
        return discussionResources;

    }

    @GetMapping("/{id}")
    public EntityModel<DiscussionModel> discussionById(@PathVariable("id") Long id) {
        Optional<DiscussionModel> optDiscussion = discussionRepository.findById(id);
        if(!optDiscussion.isPresent()){
            return null;
        }
        EntityModel<DiscussionModel> discussionResource = EntityModel.of(optDiscussion.get());
        WebMvcLinkBuilder linkTo = linkTo(methodOn(this.getClass()).discussionById(id));
        discussionResource.add(linkTo.withRel(String.format("Discussions  with id %s", id)));


        return discussionResource;
    }

    @PostMapping(consumes = "application/json")
    @ResponseStatus(HttpStatus.CREATED)
    public DiscussionModel postDiscussion(@RequestBody DiscussionModel discussion) {
        return discussionRepository.save(discussion);
    }

    @PutMapping(path = "/{id}", consumes = "application/json")
    public DiscussionModel putDiscussion(
            @PathVariable("id") Long id,
            @RequestBody DiscussionModel discussionModel) {
        discussionModel.setId(id);
        return discussionRepository.save(discussionModel);
    }

    @PatchMapping(path = "/{id}", consumes = "application/json")
    public DiscussionModel updateDiscussion(@PathVariable("id") Long id,
            @RequestBody DiscussionModel discussion) {

        DiscussionModel discussionModel = discussionRepository.findById(id).get();
        if (discussion.getContent() != null) {
            discussionModel.setContent(discussion.getContent());
        }
        if (discussion.getUser() != null) {
            discussionModel.setUser(discussion.getUser());
        }
        if (discussion.getAnswer() != null) {
            discussionModel.setAnswer(discussion.getAnswer());
        }
        return discussionRepository.save(discussionModel);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(code = HttpStatus.NO_CONTENT)
    public void deleteDiscussion(@PathVariable("id") Long id) {
        try {
            discussionRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {}
    }
}