package com.qelem.api.controller;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

import java.util.List;
import java.util.Optional;

import com.qelem.api.Repo.QuizRepository;
import com.qelem.api.model.QuizModel;
import com.qelem.api.resources.QuizResources;
import com.qelem.api.resources.QuizResourcesAssembler;

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
@RequestMapping(path = "/api/v1/quizs", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class QuizRestController {
    private final QuizRepository quizRepository;

    /**
     * lists all the quizs in the system.
     * 
     * @param model
     * @return
     */
    @GetMapping(params = "all")
    public CollectionModel<QuizResources> allQuizs() {
        PageRequest pageable = PageRequest.of(0, 12,
                Sort.by("id").descending());
        List<QuizModel> quizModels = quizRepository.findAll(pageable).getContent();
        CollectionModel<QuizResources> quizResources = new QuizResourcesAssembler()
                .toCollectionModel(quizModels);
        quizResources.add(
                linkTo(methodOn(QuizRestController.class).allQuizs())
                        .withRel("all"));
        return quizResources;

    }

    @GetMapping("/{id}")
    public EntityModel<QuizModel> quizById(@PathVariable("id") Long id) {
        Optional<QuizModel> optQuiz = quizRepository.findById(id);
        if (!optQuiz.isPresent()) {
            return null;
        }
        EntityModel<QuizModel> quizResource = EntityModel.of(optQuiz.get());
        WebMvcLinkBuilder linkTo = linkTo(methodOn(this.getClass()).quizById(id));
        quizResource.add(linkTo.withRel(String.format("Quizs  with id %s", id)));

        return quizResource;
    }

    @PostMapping(consumes = "application/json")
    @ResponseStatus(HttpStatus.CREATED)
    public QuizModel postQuiz(@RequestBody QuizModel quiz) {
        return quizRepository.save(quiz);
    }

    @PutMapping(path = "/{id}", consumes = "application/json")
    public QuizModel putQuiz(
            @PathVariable("id") Long id,
            @RequestBody QuizModel quizModel) {
        quizModel.setId(id);
        return quizRepository.save(quizModel);
    }

    @PatchMapping(path = "/{id}", consumes = "application/json")
    public QuizModel updateQuiz(@PathVariable("id") Long id,
            @RequestBody QuizModel quiz) {

        QuizModel quizModel = quizRepository.findById(id).get();
        if (quiz.getAnswer() != null) {
            quizModel.setAnswer(quiz.getAnswer());
        }
        if (quiz.getQuestion() != null) {
            quizModel.setQuestion(quiz.getQuestion());
        }

        return quizRepository.save(quizModel);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(code = HttpStatus.NO_CONTENT)
    public void deleteQuiz(@PathVariable("id") Long id) {
        try {
            quizRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {
        }
    }
}