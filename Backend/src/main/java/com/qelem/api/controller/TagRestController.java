package com.qelem.api.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.qelem.api.model.KelemUserDetail;
import com.qelem.api.model.TagModel;
import com.qelem.api.repository.TagRepository;
import com.qelem.api.util.ResourceNotFoundException;
import com.qelem.api.util.UnauthorizedAccess;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping(path = "/api/v1/tags", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class TagRestController {
    private final TagRepository tagRepository;

    @GetMapping()
    public List<TagModel> allTags(@RequestParam(name = "query", required = false, defaultValue = "") String query) {
        return tagRepository.findAllByNameContainingIgnoringCase(query);
    }

    @GetMapping("/{id}")
    public TagModel tagById(@PathVariable("id") Long id) {
        return tagRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Tag not found"));
    }

    @PostMapping(consumes = "application/json")
    @ResponseStatus(HttpStatus.CREATED)
    public TagModel createTag(@RequestBody TagModel tag, @AuthenticationPrincipal KelemUserDetail user) {
        if (user.getUserModel().isAdmin()) {
            tag.setId(null);
            return tagRepository.save(tag);
        } else {
            throw new UnauthorizedAccess("You are not authorized to create tags");
        }
    }

    @PutMapping(consumes = "application/json")
    public ResponseEntity<TagModel> updateTag(@RequestBody TagModel tag,
            @AuthenticationPrincipal KelemUserDetail user) {
        if (user.getUserModel().isAdmin()) {
            if (tagRepository.findById(tag.getId()).isPresent()) {
                return new ResponseEntity<>(tagRepository.save(tag), HttpStatus.OK);
            } else {
                tag.setId(null);
                return new ResponseEntity<>(tagRepository.save(tag), HttpStatus.CREATED);
            }
        } else {
            throw new UnauthorizedAccess("You are not authorized to update tags");
        }
    }
}