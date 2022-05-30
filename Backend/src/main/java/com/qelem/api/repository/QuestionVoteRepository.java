package com.qelem.api.repository;

import java.util.Optional;

import com.qelem.api.model.QuestionModel;
import com.qelem.api.model.QuestionVote;
import com.qelem.api.model.UserModel;

import org.springframework.data.jpa.repository.JpaRepository;

public interface QuestionVoteRepository extends JpaRepository<QuestionVote, Long> {

    public Long countByQuestionIdAndVote(Long id, int i);

    public Optional<QuestionVote> findByQuestionAndAuthor(QuestionModel question, UserModel loggedInUser);
}
