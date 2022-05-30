package com.qelem.api.controller;

import java.util.List;

import com.qelem.api.model.DiscussionModel;
import com.qelem.api.repository.DiscussionRepository;
import com.qelem.api.util.ResourceNotFoundException;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
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
@RequestMapping(path = "/api/v1/discussions", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class DiscussionRestController {
    private final DiscussionRepository discussionRepository;

    @GetMapping()
    public List<DiscussionModel> allDiscussions() {
        PageRequest pageable = PageRequest.of(0, 12,
                Sort.by("id").descending());
        List<DiscussionModel> discussionModels = discussionRepository.findAll(pageable).getContent();

        return discussionModels;
    }

    @GetMapping("/{id}")
    public DiscussionModel discussionById(@PathVariable("id") Long id) {
        DiscussionModel discussion = discussionRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Discussion not found"));

        return discussion;
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
        if (discussion.getAnswer() != null) {
            discussionModel.setAnswer(discussion.getAnswer());
        }

        discussionModel.setAuthor(discussion.getAuthor());
        return discussionRepository.save(discussionModel);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(code = HttpStatus.NO_CONTENT)
    public void deleteDiscussion(@PathVariable("id") Long id) {
        try {
            discussionRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {
        }
    }
}