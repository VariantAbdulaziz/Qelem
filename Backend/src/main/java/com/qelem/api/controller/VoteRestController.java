package com.qelem.api.controller;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

import java.util.List;
import java.util.Optional;

import com.qelem.api.Repo.VoteRepository;
import com.qelem.api.model.VoteModel;
import com.qelem.api.resources.VoteResources;
import com.qelem.api.resources.VoteResourcesAssembler;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.hateoas.CollectionModel;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.server.mvc.WebMvcLinkBuilder;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping(path = "/api/v1/votes", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class VoteRestController {
    private final VoteRepository voteRepository;

    /**
     * lists all the votes in the system.
     * 
     * @param model
     * @return
     */
    @GetMapping(params = "all")
    public CollectionModel<VoteResources> allVotes() {
        PageRequest pageable = PageRequest.of(0, 12,
                Sort.by("id").descending());
        List<VoteModel> voteModels = voteRepository.findAll(pageable).getContent();
        CollectionModel<VoteResources> voteResources = new VoteResourcesAssembler()
                .toCollectionModel(voteModels);
        voteResources.add(
                linkTo(methodOn(VoteRestController.class).allVotes())
                        .withRel("all"));
        return voteResources;

    }

    @GetMapping("/{id}")
    public EntityModel<VoteModel> voteById(@PathVariable("id") Long id) {
        Optional<VoteModel> optVote = voteRepository.findById(id);
        if (!optVote.isPresent()) {
            return null;
        }
        EntityModel<VoteModel> voteResource = EntityModel.of(optVote.get());
        WebMvcLinkBuilder linkTo = linkTo(methodOn(this.getClass()).voteById(id));
        voteResource.add(linkTo.withRel(String.format("Votes  with id %s", id)));

        return voteResource;
    }

    @PostMapping(consumes = "application/json")
    @ResponseStatus(HttpStatus.CREATED)
    public VoteModel postVote(@RequestBody VoteModel vote) {
        return voteRepository.save(vote);
    }

    @PutMapping(path = "/{id}", consumes = "application/json")
    public VoteModel putVote(
            @PathVariable("id") Long id,
            @RequestBody VoteModel voteModel) {
        voteModel.setId(id);
        return voteRepository.save(voteModel);
    }

    @PatchMapping(path = "/{id}", consumes = "application/json")
    public VoteModel updateVote(@PathVariable("id") Long id,
            @RequestBody VoteModel vote) {

        VoteModel voteModel = voteRepository.findById(id).get();
        if (vote.getAnswerModel() != null) {
            voteModel.setAnswerModel(vote.getAnswerModel());
        }
        if (vote.getUpVote() != 0) {
            voteModel.setUpVote(vote.getUpVote());
        }
        if (vote.getDownVote() != 0) {
            voteModel.setDownVote(vote.getDownVote());
        }

        voteModel.setUserModel(vote.getUserModel());

        return voteRepository.save(voteModel);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(code = HttpStatus.NO_CONTENT)
    public void deleteVote(@PathVariable("id") Long id) {
        try {
            voteRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {
        }
    }
}