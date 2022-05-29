package com.qelem.api.controller;

import java.util.List;
import java.util.Optional;

import com.qelem.api.Repo.ReportedQuestionRepository;
import com.qelem.api.model.ReportedQuestionModel;
import com.qelem.api.resources.ReportedQuestionResources;
import com.qelem.api.resources.ReportedQuestionResourcesAssembler;

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
@RequestMapping(path = "/api/v1/reportedQuestions", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class ReportedQuestionRestController {
    private final ReportedQuestionRepository reportedQuestionRepository;

    /**
     * lists all the reportedQuestions in the system.
     * 
     * @param model
     * @return
     */
    @GetMapping(params = "all")
    public CollectionModel<ReportedQuestionResources> allReportedQuestions() {
        PageRequest pageable = PageRequest.of(0, 12,
                Sort.by("id").descending());
        List<ReportedQuestionModel> reportedQuestionModels = reportedQuestionRepository.findAll(pageable).getContent();
        CollectionModel<ReportedQuestionResources> reportedQuestionResources = new ReportedQuestionResourcesAssembler()
                .toCollectionModel(reportedQuestionModels);
        reportedQuestionResources.add(
                linkTo(methodOn(ReportedQuestionRestController.class).allReportedQuestions())
                        .withRel("all"));
        return reportedQuestionResources;

    }

    @GetMapping("/{id}")
    public EntityModel<ReportedQuestionModel> reportedQuestionById(@PathVariable("id") Long id) {
        Optional<ReportedQuestionModel> optReportedQuestion = reportedQuestionRepository.findById(id);
        if (!optReportedQuestion.isPresent()) {
            return null;
        }
        EntityModel<ReportedQuestionModel> reportedQuestionResource = EntityModel.of(optReportedQuestion.get());
        WebMvcLinkBuilder linkTo = linkTo(methodOn(this.getClass()).reportedQuestionById(id));
        reportedQuestionResource.add(linkTo.withRel(String.format("ReportedQuestions  with id %s", id)));

        return reportedQuestionResource;
    }

    @PostMapping(consumes = "application/json")
    @ResponseStatus(HttpStatus.CREATED)
    public ReportedQuestionModel postReportedQuestion(@RequestBody ReportedQuestionModel reportedQuestion) {
        return reportedQuestionRepository.save(reportedQuestion);
    }

    @PutMapping(path = "/{id}", consumes = "application/json")
    public ReportedQuestionModel putReportedQuestion(
            @PathVariable("id") Long id,
            @RequestBody ReportedQuestionModel reportedQuestionModel) {
        reportedQuestionModel.setId(id);
        return reportedQuestionRepository.save(reportedQuestionModel);
    }

    @PatchMapping(path = "/{id}", consumes = "application/json")
    public ReportedQuestionModel updateReportedQuestion(@PathVariable("id") Long id,
            @RequestBody ReportedQuestionModel reportedQuestion) {

        ReportedQuestionModel reportedQuestionModel = reportedQuestionRepository.findById(id).get();
        if (reportedQuestion.getQuestion() != null) {
            reportedQuestionModel.setQuestion(reportedQuestion.getQuestion());
        }
        if (reportedQuestion.getReporter() != null) {
            reportedQuestionModel.setReporter(reportedQuestion.getReporter());
        }
        return reportedQuestionRepository.save(reportedQuestionModel);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(code = HttpStatus.NO_CONTENT)
    public void deleteReportedQuestion(@PathVariable("id") Long id) {
        try {
            reportedQuestionRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {
        }
    }
}