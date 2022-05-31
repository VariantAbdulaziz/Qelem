package com.qelem.api.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

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
import com.qelem.api.util.NoVoteFoundException;
import com.qelem.api.util.ResourceNotFoundException;
import com.qelem.api.util.UnauthorizedAccess;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

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

    private QuestionDto questionDtoFromAnswerModel(QuestionModel question) {
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
            @RequestParam(name = "sort", defaultValue = "id") String sort) {
        PageRequest pageable = PageRequest.of(page, size,
                Sort.by("id").descending());

        List<QuestionModel> questions = questionRepository.findAll(pageable).toList();

        return questions.stream().map(this::questionDtoFromAnswerModel)
                .collect(java.util.stream.Collectors.toList());
    }

    @GetMapping("/{id}")
    public QuestionDto questionById(@PathVariable("id") Long id) {
        log.info("Getting question with id {}", id);

        QuestionModel question = questionRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Question not found"));

        log.info("Question with id {} found", id);
        return questionDtoFromAnswerModel(question);
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

        return questionDtoFromAnswerModel(question);
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

        return questionDtoFromAnswerModel(question);
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

    // Voting

    @PostMapping("/{id}/upvote")
    public void upVoteQuestion(@PathVariable("id") Long id) {
        log.info("Upvote question request with id {}", id);

        UserModel user = loggedInUser();

        // find the question by id or throw 404
        QuestionModel question = questionRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Question with id " + id + " not found"));

        // find the vote by the user and question
        Optional<QuestionVote> vote = questionVoteRepository.findByQuestionAndAuthor(question, user);

        // if the user has already voted, update the vote
        if (vote.isPresent() && vote.get().getVote() != 1) {
            QuestionVote questionVote = vote.get();
            questionVote.setVote(1);
            questionVoteRepository.save(questionVote);
            log.info("Question with id {} upvoted", id);
        } else {
            // if the user has not voted, create a new vote
            QuestionVote questionVote = new QuestionVote();
            questionVote.setQuestion(question);
            questionVote.setAuthor(user);
            questionVote.setVote(1);
            questionVoteRepository.save(questionVote);
            log.info("Question with id {} upvoted", id);
        }
    }

    @PostMapping("/{id}/downvote")
    public void downVoteQuestion(@PathVariable("id") Long id) {
        log.info("Downvote question request with id {}", id);

        UserModel user = loggedInUser();

        // find the question by id or throw 404
        QuestionModel question = questionRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Question with id " + id + " not found"));

        // find the vote by the user and question
        Optional<QuestionVote> vote = questionVoteRepository.findByQuestionAndAuthor(question, user);

        // if the user has already voted, update the vote
        if (vote.isPresent() && vote.get().getVote() != -1) {
            QuestionVote questionVote = vote.get();
            questionVote.setVote(-1);
            questionVoteRepository.save(questionVote);
            log.info("Question with id {} downvoted", id);
        } else {
            // if the user has not voted, create a new vote
            QuestionVote questionVote = new QuestionVote();
            questionVote.setQuestion(question);
            questionVote.setAuthor(user);
            questionVote.setVote(-1);
            questionVoteRepository.save(questionVote);
            log.info("Question with id {} downvoted", id);
        }
    }

    @PostMapping("/{id}/unvote")
    public void unVoteQuestion(@PathVariable("id") Long id) {
        log.info("Unvote question with id {} request", id);

        UserModel user = loggedInUser();

        // find the question by id or throw 404
        QuestionModel question = questionRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Question with id " + id + " not found"));

        // find the vote by the user and question
        QuestionVote vote = questionVoteRepository.findByQuestionAndAuthor(question, user).orElseThrow(
                () -> new NoVoteFoundException("User has not votted this question"));

        Boolean isUpvote = vote.getVote() == 1;
        questionVoteRepository.delete(vote);

        if (isUpvote) {
            log.info("Question with id {} un upvoted", id);
        } else {
            log.info("Question with id {} un downvoted", id);
        }
    }

}