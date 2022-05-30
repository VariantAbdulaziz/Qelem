package com.qelem.api.repository;

import java.util.Optional;

import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.AnswerVote;
import com.qelem.api.model.UserModel;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AnswerVoteRepository extends JpaRepository<AnswerVote, Long> {

    Optional<AnswerVote> findByAnswerAndAuthor(AnswerModel answer, UserModel userModel);

    public Long countByAnswerIdAndVote(Long id, int i);
}
