package com.qelem.api.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.AnswerVote;
import com.qelem.api.model.QuestionModel;
import com.qelem.api.model.QuestionVote;
import com.qelem.api.model.UserModel;
import com.qelem.api.repository.AnswerVoteRepository;
import com.qelem.api.repository.QuestionRepository;
import com.qelem.api.repository.QuestionVoteRepository;
import com.qelem.api.repository.UserRepository;
import com.qelem.api.restdto.AnswerDto;
import com.qelem.api.restdto.QuestionDto;
import com.qelem.api.restdto.QuestionForm;
import com.qelem.api.util.ResourceNotFoundException;
import com.qelem.api.util.UnauthorizedAccess;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping(path = "/api/v1/questions", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
@Slf4j
public class QuestionRestController {
    private final QuestionRepository questionRepository;
    private final QuestionVoteRepository questionVoteRepository;
    private final AnswerVoteRepository answerVoteRepository;
    private final UserRepository userRepository;

    private UserModel loggedInUser() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
        } else {
            username = principal.toString();
        }

        UserModel user = userRepository.findByUsername(username)
                .orElseThrow(() -> new UnauthorizedAccess("User not found"));
        return user;
    }

    private QuestionDto questionDtoFromQuestionModel(QuestionModel question) {
        Long upVotes = questionVoteRepository.countByQuestionIdAndVote(question.getId(), 1);
        Long downVotes = questionVoteRepository.countByQuestionIdAndVote(question.getId(), -1);

        Optional<QuestionVote> userVote = questionVoteRepository.findByQuestionAndAuthor(question, loggedInUser());
        int userVoteValue = userVote.isPresent() ? userVote.get().getVote() : 0;

        QuestionDto questionDto = new QuestionDto(question, upVotes, downVotes, userVoteValue);
        return questionDto;
    }

    private AnswerDto answerDtoFromAnswerModel(AnswerModel answer) {
        Long upVotes = answerVoteRepository.countByAnswerIdAndVote(answer.getId(), 1);
        Long downVotes = answerVoteRepository.countByAnswerIdAndVote(answer.getId(), -1);

        Optional<AnswerVote> userVote = answerVoteRepository.findByAnswerAndAuthor(answer, loggedInUser());
        int userVoteValue = userVote.isPresent() ? userVote.get().getVote() : 0;

        AnswerDto answerDto = new AnswerDto(answer, upVotes, downVotes, userVoteValue);
        return answerDto;
    }

    @GetMapping("/{id}/answers")
    public List<AnswerDto> questionAnswers(@PathVariable("id") Long id) {
        QuestionModel question = questionRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Question not found"));

        return question.getAnswers().stream().map(this::answerDtoFromAnswerModel)
                .collect(java.util.stream.Collectors.toList());
    }

    @GetMapping()
    public List<QuestionDto> allQuestions(@RequestParam(name = "page", defaultValue = "0") int page,
            @RequestParam(name = "size", defaultValue = "10") int size,
            @RequestParam(name = "sort", defaultValue = "id") String sort,
            @RequestParam(name = "authorId", required = false) Long authorId) {
        PageRequest pageable = PageRequest.of(page, size,
                Sort.by("id").descending());

        List<QuestionModel> questions;

        if (authorId != null) {
            questions = questionRepository.findByAuthorId(authorId, pageable).toList();
        } else {
            questions = questionRepository.findAll(pageable).toList();
        }

        return questions.stream().map(this::questionDtoFromQuestionModel)
                .collect(java.util.stream.Collectors.toList());
    }

    @GetMapping("/{id}")
    public QuestionDto questionById(@PathVariable("id") Long id) {
        log.info("Getting question with id {}", id);

        QuestionModel question = questionRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Question not found"));

        log.info("Question with id {} found", id);
        return questionDtoFromQuestionModel(question);
    }

    @PostMapping(consumes = "application/json")
    @ResponseStatus(HttpStatus.CREATED)
    public QuestionDto postQuestion(@RequestBody @Valid QuestionForm form) {
        log.info("Posting question: {}", form);

        // creating a new question
        QuestionModel question = new QuestionModel();
        question.setTopic(form.getTopic());
        question.setContent(form.getContent());

        question = questionRepository.save(question);
        log.info("Question created: {}", question);

        return questionDtoFromQuestionModel(question);
    }

    @PatchMapping(path = "/{id}", consumes = "application/json")
    public QuestionDto updateQuestion(@PathVariable("id") Long id,
            @RequestBody @Valid QuestionForm form) {
        log.info("Updating question: {}", form);
        UserModel user = loggedInUser();

        // finding the question
        QuestionModel question = questionRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Question not found"));

        // AUTORIZATION : checking if the logged in user is the author of the question
        // or the user is an admin
        if (!question.getAuthor().equals(user) && !user.isAdmin()) {
            throw new UnauthorizedAccess("You are not authorized to update this question");
        }

        // updating the question
        if (form.getContent() != null) {
            question.setContent(form.getContent());
        }
        if (form.getTopic() != null) {
            question.setTopic(form.getTopic());
        }

        question = questionRepository.save(question);

        log.info("Question updated: {}", question);

        return questionDtoFromQuestionModel(question);
    }

    @DeleteMapping("/{id}")
    public void deleteQuestion(@PathVariable("id") Long id) {
        log.info("Delete question request with id {}", id);

        UserModel user = loggedInUser();

        // finding the question
        QuestionModel question = questionRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Question not found"));

        // AUTORIZATION : checking if the logged in user is the author of the question
        // or the user is an admin
        if (!question.getAuthor().equals(user) && !user.isAdmin()) {
            log.info("User {} is not authorized to delete this question", user.getUsername());
            throw new UnauthorizedAccess("You are not authorized to delete this question");
        }

        questionRepository.delete(question);
        log.info("Question with id {} deleted", id);
    }

    @PutMapping(path = "/{id}/vote", consumes = "application/json", produces = "application/json")
    public ResponseEntity<QuestionDto> voteQuestion(@PathVariable("id") Long id,
            @RequestBody @Valid QuestionVote questionVote) {
        UserModel user = loggedInUser();

        // finding the question from the question database based on the id
        QuestionModel question = questionRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Question with id " + id + " not found"));

        // find the vote by the user and question
        Optional<QuestionVote> vote = questionVoteRepository.findByQuestionAndAuthor(question, user);

        int responseStatus = vote.isPresent() ? HttpStatus.OK.value() : HttpStatus.CREATED.value();

        // if the user has already voted, update the vote
        if (vote.isPresent()) {
            vote.get().setVote(questionVote.getVote());
        } else {
            // if the user has not voted, create a new vote
            QuestionVote newVote = new QuestionVote();
            newVote.setQuestion(question);
            newVote.setAuthor(user);
            newVote.setVote(questionVote.getVote());
            questionVoteRepository.save(newVote);
        }

        // saving the question to the question database
        question = questionRepository.save(question);
        return ResponseEntity.status(responseStatus).body(questionDtoFromQuestionModel(question));
    }

}