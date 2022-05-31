package com.qelem.api.controller;

import java.util.List;

import com.qelem.api.model.ReportedAnswerModel;
import com.qelem.api.repository.ReportedAnswerRepository;
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
@RequestMapping(path = "/api/v1/reportedAnswers", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class ReportedAnswerRestController {
    private final ReportedAnswerRepository reportedAnswerRepository;

    @GetMapping()
    public List<ReportedAnswerModel> allReportedAnswers() {
        PageRequest pageable = PageRequest.of(0, 12,
                Sort.by("id").descending());
        List<ReportedAnswerModel> reportedAnswerModels = reportedAnswerRepository.findAll(pageable).getContent();

        return reportedAnswerModels;

    }

    @GetMapping("/{id}")
    public ReportedAnswerModel reportedAnswerById(@PathVariable("id") Long id) {
        ReportedAnswerModel reportedAnswerModel = reportedAnswerRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("ReportedAnswer not found"));

        return reportedAnswerModel;
    }

    @PostMapping(consumes = "application/json")
    @ResponseStatus(HttpStatus.CREATED)
    public ReportedAnswerModel postReportedAnswer(@RequestBody ReportedAnswerModel reportedAnswer) {
        return reportedAnswerRepository.save(reportedAnswer);
    }

    @PutMapping(path = "/{id}", consumes = "application/json")
    public ReportedAnswerModel putReportedAnswer(
            @PathVariable("id") Long id,
            @RequestBody ReportedAnswerModel reportedAnswerModel) {
        reportedAnswerModel.setId(id);
        return reportedAnswerRepository.save(reportedAnswerModel);
    }

    @PatchMapping(path = "/{id}", consumes = "application/json")
    public ReportedAnswerModel updateReportedAnswer(@PathVariable("id") Long id,
            @RequestBody ReportedAnswerModel reportedAnswer) {

        ReportedAnswerModel reportedAnswerModel = reportedAnswerRepository.findById(id).get();
        if (reportedAnswer.getAnswer() != null) {
            reportedAnswerModel.setAnswer(reportedAnswer.getAnswer());
        }
        if (reportedAnswer.getReporter() != null) {
            reportedAnswerModel.setReporter(reportedAnswer.getReporter());
        }
        return reportedAnswerRepository.save(reportedAnswerModel);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(code = HttpStatus.NO_CONTENT)
    public void deleteReportedAnswer(@PathVariable("id") Long id) {
        try {
            reportedAnswerRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {
        }
    }
}