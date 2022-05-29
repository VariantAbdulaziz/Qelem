package com.qelem.api.controller;

import java.util.List;
import java.util.Optional;

import com.qelem.api.Repo.QuestionRepository;
import com.qelem.api.model.QuestionModel;
import com.qelem.api.resources.QuestionResources;
import com.qelem.api.resources.QuestionResourcesAssembler;

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
@RequestMapping(path = "/api/v1/questions", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class QuestionRestController {
    private final QuestionRepository questionRepository;

    /**
     * lists all the questions in the system.
     * 
     */
    @GetMapping(produces = "application/json")
    public CollectionModel<QuestionResources> allQuestions() {
        PageRequest pageable = PageRequest.of(0, 12,
                Sort.by("id").descending());
        List<QuestionModel> questionModels = questionRepository.findAll(pageable).getContent();
        CollectionModel<QuestionResources> questionResources = new QuestionResourcesAssembler()
                .toCollectionModel(questionModels);
        questionResources.add(
                linkTo(methodOn(QuestionRestController.class).allQuestions())
                        .withRel("all"));
        return questionResources;

    }

    @GetMapping("/{id}")
    public EntityModel<QuestionModel> questionById(@PathVariable("id") Long id) {
        Optional<QuestionModel> optQuestion = questionRepository.findById(id);
        if (!optQuestion.isPresent()) {
            return null;
        }
        EntityModel<QuestionModel> questionResource = EntityModel.of(optQuestion.get());
        WebMvcLinkBuilder linkTo = linkTo(methodOn(this.getClass()).questionById(id));
        questionResource.add(linkTo.withRel(String.format("Questions  with id %s", id)));

        return questionResource;
    }

    @PostMapping(consumes = "application/json", produces = "application/json")
    @ResponseStatus(HttpStatus.CREATED)
    public QuestionModel postQuestion(@RequestBody QuestionModel question) {
        return questionRepository.save(question);
    }

    @PutMapping(path = "/{id}", consumes = "application/json")
    public QuestionModel putQuestion(
            @PathVariable("id") Long id,
            @RequestBody QuestionModel questionModel) {
        questionModel.setId(id);
        return questionRepository.save(questionModel);
    }

    @PatchMapping(path = "/{id}", consumes = "application/json")
    public QuestionModel updateQuestion(@PathVariable("id") Long id,
            @RequestBody QuestionModel question) {

        QuestionModel questionModel = questionRepository.findById(id).get();
        if (question.getContent() != null) {
            questionModel.setContent(question.getContent());
        }
        if (question.getStatus() != null) {
            questionModel.setStatus(question.getStatus());
        }
        if (question.getTopic() != null) {
            questionModel.setTopic(question.getTopic());
        }
        if (question.getTags() != null) {
            questionModel.setTags(question.getTags());
        }

        questionModel.setAuthor(question.getAuthor());
        return questionRepository.save(questionModel);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(code = HttpStatus.NO_CONTENT)
    public void deleteQuestion(@PathVariable("id") Long id) {
        try {
            questionRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {
        }
    }
}