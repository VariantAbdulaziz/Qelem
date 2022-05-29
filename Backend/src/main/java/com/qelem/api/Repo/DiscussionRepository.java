package com.qelem.api.Repo;

import java.util.List;

import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.DiscussionModel;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface DiscussionRepository extends JpaRepository<DiscussionModel, Long> {
    List<DiscussionModel> findByAnswer(AnswerModel answer);

    List<DiscussionModel> findByAnswer_id(Long id);

    @Query(value = "SELECT answer_id FROM discussion_model WHERE id like %?1 ", nativeQuery = true)
    Long findByDiscussion_id(Long discussion_id);

}