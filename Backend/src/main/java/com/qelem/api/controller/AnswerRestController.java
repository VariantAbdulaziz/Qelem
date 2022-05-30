package com.qelem.api.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.AnswerVote;
import com.qelem.api.model.QuestionModel;
import com.qelem.api.model.UserModel;
import com.qelem.api.repository.AnswerRepository;
import com.qelem.api.repository.AnswerVoteRepository;
import com.qelem.api.repository.QuestionRepository;
import com.qelem.api.repository.UserRepository;
import com.qelem.api.restdto.AnswerDto;
import com.qelem.api.restdto.AnswerForm;
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
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping(path = "/api/v1/answers", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
@Slf4j
public class AnswerRestController {
    private final AnswerRepository answerRepository;
    private final AnswerVoteRepository answerVoteRepository;
    private final UserRepository userRepository;
    private final QuestionRepository questionRepository;

    private UserModel loggedInUser() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
        } else {
            username = principal.toString();
        }

        // finding the user from the user database based on the principal's name
        UserModel user = userRepository.findByUsername(username)
                .orElseThrow(() -> new UnauthorizedAccess("User not found"));
        return user;
    }

    private AnswerDto answerDtoFromAnswerModel(AnswerModel answer) {
        Long upVotes = answerVoteRepository.countByAnswerIdAndVote(answer.getId(), 1);
        Long downVotes = answerVoteRepository.countByAnswerIdAndVote(answer.getId(), -1);

        Optional<AnswerVote> userVote = answerVoteRepository.findByAnswerAndAuthor(answer, loggedInUser());
        int userVoteValue = userVote.isPresent() ? userVote.get().getVote() : 0;

        AnswerDto answerDto = new AnswerDto(answer, upVotes, downVotes, userVoteValue);
        return answerDto;
    }

    @GetMapping()
    public List<AnswerDto> allAnswers() {
        PageRequest pageable = PageRequest.of(0, 12,
                Sort.by("id"));

        List<AnswerModel> answers = answerRepository.findAll(pageable).getContent();

        List<AnswerDto> answerDtos = answers.stream().map(this::answerDtoFromAnswerModel)
                .collect(java.util.stream.Collectors.toList());
        return answerDtos;
    }

    @GetMapping("/{id}")
    public AnswerDto answerById(@PathVariable("id") Long id) {
        // finding the answer from the answer database based on the id
        AnswerModel answer = answerRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Answer with id " + id + " not found"));

        return answerDtoFromAnswerModel(answer);
    }

    @PostMapping(consumes = "application/json")
    @ResponseStatus(HttpStatus.CREATED)
    public AnswerDto postAnswer(@RequestBody @Valid AnswerForm form) {
        // finding the question from the question database based on the id
        AnswerModel answer = new AnswerModel();

        // setting the answer's content
        answer.setContent(form.getContent());

        // make sure the question exists or throw 404 error
        QuestionModel question = questionRepository.findById(form.getQuestionId())
                .orElseThrow(
                        () -> new ResourceNotFoundException("Question with id " + form.getQuestionId() + " not found"));

        answer.setQuestion(question);

        // saving the answer to the answer database
        answer = answerRepository.save(answer);
        return answerDtoFromAnswerModel(answer);
    }

    @PatchMapping(path = "/{id}", consumes = "application/json", produces = "application/json")
    public AnswerDto editAnswer(
            @PathVariable("id") Long id,
            @RequestBody @Valid AnswerForm answerForm) {
        UserModel user = loggedInUser();

        // find the answer by id or throw 404
        AnswerModel answer = answerRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Answer with id " + id + " not found"));

        // AUTHORIZATION : only the author or an admin can edit the answer
        if (!answer.getAuthor().equals(user) && !user.isAdmin()) {
            log.error("User with id {} is not authorized to update answer with id {}", loggedInUser().getId(), id);
            throw new UnauthorizedAccess("You are not authorized to update this answer");
        }

        answer.setContent(answerForm.getContent());

        answer = answerRepository.save(answer);
        return answerDtoFromAnswerModel(answer);
    }

    @DeleteMapping("/{id}")
    public void deleteAnswer(@PathVariable("id") Long id) {
        UserModel user = loggedInUser();

        // find the answer by id or throw 404
        AnswerModel answer = answerRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Answer with id " + id + " not found"));

        // AUTHORIZATION : only the author or an admin can delete the answer
        if (!answer.getAuthor().equals(user) && !user.isAdmin()) {
            log.error("User with id {} is not authorized to update answer with id {}", loggedInUser().getId(), id);
            throw new UnauthorizedAccess("You are not authorized to update this answer");
        }

        answerRepository.delete(answer);
    }

    // Voting

    @PostMapping("/{id}/upvote")
    public void upVoteAnswer(@PathVariable("id") Long id) {
        UserModel user = loggedInUser();
        log.info("Upvote answer request with id {}", id);

        // find the answer by id or throw 404
        AnswerModel answer = answerRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Answer with id " + id + " not found"));

        // find the vote by the user and answer
        Optional<AnswerVote> vote = answerVoteRepository.findByAnswerAndAuthor(answer, user);

        // if the user has already voted, update the vote
        if (vote.isPresent() && vote.get().getVote() != 1) {
            AnswerVote answerVote = vote.get();
            answerVote.setVote(1);
            answerVoteRepository.save(answerVote);
            log.info("Answer with id {} upvoted", id);
        } else {
            // if the user has not voted, create a new vote
            AnswerVote answerVote = new AnswerVote();
            answerVote.setAnswer(answer);
            answerVote.setAuthor(user);
            answerVote.setVote(1);
            answerVoteRepository.save(answerVote);
            log.info("Answer with id {} upvoted", id);
        }
    }

    @PostMapping("/{id}/downvote")
    public void downVoteAnswer(@PathVariable("id") Long id) {
        UserModel user = loggedInUser();
        log.info("Downvote answer request with id {}", id);

        // find the answer by id or throw 404
        AnswerModel answer = answerRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Answer with id " + id + " not found"));

        // find the vote by the user and answer
        Optional<AnswerVote> vote = answerVoteRepository.findByAnswerAndAuthor(answer, user);

        // if the user has already voted, update the vote
        if (vote.isPresent() && vote.get().getVote() != -1) {
            AnswerVote answerVote = vote.get();
            answerVote.setVote(-1);
            answerVoteRepository.save(answerVote);
            log.info("Answer with id {} downvoted", id);
        } else {
            // if the user has not voted, create a new vote
            AnswerVote answerVote = new AnswerVote();
            answerVote.setAnswer(answer);
            answerVote.setAuthor(user);
            answerVote.setVote(-1);
            answerVoteRepository.save(answerVote);
            log.info("Answer with id {} downvoted", id);
        }
    }

    @PostMapping("/{id}/unvote")
    public void unVoteAnswer(@PathVariable("id") Long id) {
        UserModel user = loggedInUser();
        log.info("Unvote answer with id {} request", id);

        // find the answer by id or throw 404
        AnswerModel answer = answerRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Answer with id " + id + " not found"));

        // find the vote by the user and answer
        AnswerVote vote = answerVoteRepository.findByAnswerAndAuthor(answer, user).orElseThrow(
                () -> new NoVoteFoundException("User has not votted this answer"));

        Boolean isUpvote = vote.getVote() == 1;
        answerVoteRepository.delete(vote);

        if (isUpvote) {
            log.info("Answer with id {} un upvoted", id);
        } else {
            log.info("Answer with id {} un downvoted", id);
        }
    }
}