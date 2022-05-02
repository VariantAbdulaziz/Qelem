package com.qelem.api.controller;

import java.util.List;
import java.util.Optional;


import com.qelem.api.Repo.TagRepository;
import com.qelem.api.model.TagModel;
import com.qelem.api.resources.TagResources;
import com.qelem.api.resources.TagResourcesAssembler;


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
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping(path = "/api/v1/tags", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class TagRestController {
    private final TagRepository tagRepository;

    /**
     * lists all the tags in the system.
     * 
     * @param model
     * @return
     */
    @GetMapping(params = "all")
    public CollectionModel<TagResources> allTags() {
        PageRequest pageable = PageRequest.of(0, 12,
                Sort.by("id").descending());
        List<TagModel> tagModels = tagRepository.findAll(pageable).getContent();
        CollectionModel<TagResources> tagResources = new TagResourcesAssembler()
                .toCollectionModel(tagModels);
        tagResources.add(
                linkTo(methodOn(TagRestController.class).allTags())
                        .withRel("all"));
        return tagResources;

    }

    @GetMapping("/{id}")
    public EntityModel<TagModel> tagById(@PathVariable("id") Long id) {
        Optional<TagModel> optTag = tagRepository.findById(id);
        if(!optTag.isPresent()){
            return null;
        }
        EntityModel<TagModel> tagResource = EntityModel.of(optTag.get());
        WebMvcLinkBuilder linkTo = linkTo(methodOn(this.getClass()).tagById(id));
        tagResource.add(linkTo.withRel(String.format("Tags  with id %s", id)));


        return tagResource;
    }

    @PostMapping(consumes = "application/json")
    @ResponseStatus(HttpStatus.CREATED)
    public TagModel postTag(@RequestBody TagModel tag) {
        return tagRepository.save(tag);
    }

    @PutMapping(path = "/{id}", consumes = "application/json")
    public TagModel putTag(
            @PathVariable("id") Long id,
            @RequestBody TagModel tagModel) {
        tagModel.setId(id);
        return tagRepository.save(tagModel);
    }

    @PatchMapping(path = "/{id}", consumes = "application/json")
    public TagModel updateTag(@PathVariable("id") Long id,
            @RequestBody TagModel tag) {

        TagModel tagModel = tagRepository.findById(id).get();
        if (tag.getTag() != null) {
            tagModel.setTag(tag.getTag());
        }
        
        return tagRepository.save(tagModel);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(code = HttpStatus.NO_CONTENT)
    public void deleteTag(@PathVariable("id") Long id) {
        try {
            tagRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {}
    }
}