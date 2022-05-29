package com.qelem.api.controller;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

import java.util.List;
import java.util.Optional;

import com.qelem.api.Repo.AnswerRepository;
import com.qelem.api.model.AnswerModel;
import com.qelem.api.resources.AnswerResourceAssembler;
import com.qelem.api.resources.AnswerResources;

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
@RequestMapping(path = "/api/v1/answers", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class AnswerRestController {
    private final AnswerRepository answerRepository;
    
    /**
     * lists all the answers in the system.
     * 
     * @param model
     * @return
     */
   
    @GetMapping(params = "all")
    public CollectionModel<AnswerResources> allAnswers() {
        PageRequest pageable = PageRequest.of(0, 12,
                Sort.by("id").descending());
        List<AnswerModel> answerModels = answerRepository.findAll(pageable).getContent();
        CollectionModel<AnswerResources> answerResources = new AnswerResourceAssembler()
                .toCollectionModel(answerModels);
        answerResources.add(
                linkTo(methodOn(AnswerRestController.class).allAnswers())
                        .withRel("all"));
        return answerResources;

    }

    @GetMapping("/{id}")
    public EntityModel<AnswerModel> answerById(@PathVariable("id") Long id) {
        Optional<AnswerModel> optAnswer = answerRepository.findById(id);
        if(!optAnswer.isPresent()){
            return null;
        }
        EntityModel<AnswerModel> answerResource = EntityModel.of(optAnswer.get());
        WebMvcLinkBuilder linkTo = linkTo(methodOn(this.getClass()).answerById(id));
        answerResource.add(linkTo.withRel(String.format("Answers  with id %s", id)));


        return answerResource;
    }

    @PostMapping(consumes = "application/json")
    @ResponseStatus(HttpStatus.CREATED)
    public AnswerModel postAnswer(@RequestBody AnswerModel answer) {
        return answerRepository.save(answer);
    }

    @PutMapping(path = "/{id}", consumes = "application/json")
    public AnswerModel putAnswer(
            @PathVariable("id") Long id,
            @RequestBody AnswerModel answerModel) {
        answerModel.setId(id);
        return answerRepository.save(answerModel);
    }

    @PatchMapping(path = "/{id}", consumes = "application/json")
    public AnswerModel updateAnswer(@PathVariable("id") Long id,
            @RequestBody AnswerModel answer) {

        AnswerModel answerModel = answerRepository.findById(id).get();
        if (answer.getContent() != null) {
            answerModel.setContent(answer.getContent());
        }
        if (answer.getQuestion() != null) {
            answerModel.setQuestion(answer.getQuestion());
        }
        if (answer.getAuthor() != null) {
            answerModel.setAuthor(answer.getAuthor());
        }
        if (answer.getVote() != null) {
            answerModel.setVote(answer.getVote());
        }
        if (answer.getReportedAnswer() != null) {
            answerModel.setReportedAnswer(answer.getReportedAnswer());
        }
        return answerRepository.save(answerModel);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(code = HttpStatus.NO_CONTENT)
    public void deleteAnswer(@PathVariable("id") Long id) {
        try {
            answerRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {}
    }
}