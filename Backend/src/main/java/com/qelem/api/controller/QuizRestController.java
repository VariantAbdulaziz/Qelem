package com.qelem.api.controller;

import java.util.List;

import com.qelem.api.model.QuizModel;
import com.qelem.api.repository.QuizRepository;
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
@RequestMapping(path = "/api/v1/quizs", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class QuizRestController {
    private final QuizRepository quizRepository;

    @GetMapping(params = "all")
    public List<QuizModel> allQuizs() {
        PageRequest pageable = PageRequest.of(0, 12,
                Sort.by("id").descending());
        List<QuizModel> quizModels = quizRepository.findAll(pageable).getContent();

        return quizModels;
    }

    @GetMapping("/{id}")
    public QuizModel quizById(@PathVariable("id") Long id) {
        QuizModel optQuiz = quizRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Quiz not found"));

        return optQuiz;
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