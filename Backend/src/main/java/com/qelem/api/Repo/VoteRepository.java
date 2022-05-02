package com.qelem.api.Repo;

import java.util.List;

import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.UserModel;
import com.qelem.api.model.VoteModel;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface VoteRepository extends JpaRepository<VoteModel, Long> {
    
    // @Query(value="SELECT * FROM vote WHERE answer = :answerModel AND vote = 1", nativeQuery=true)
    // public List<Vote> findUpVote(@Param("answerModel") AnswerModel answerModel);

    // @Query(value="SELECT * FROM vote WHERE answer = :answerModel AND vote = -1", nativeQuery=true)
    // public List<Vote> findDownVote(@Param("answerModel") AnswerModel answerModel);

    @Query(value="SELECT * FROM vote WHERE user_model_id = :user_id AND answer_model_id = :answerModel_id", nativeQuery=true)
    public VoteModel findUserVote(@Param("user_id") Long user_id, @Param("answerModel_id") Long answerModel_id);

    @Query(value="SELECT COUNT(*) FROM vote WHERE answer_model_id = :ans_id AND up_vote = 1", nativeQuery=true)
    public Long findUpVote(@Param("ans_id") Long ans_id);

    @Query(value="SELECT COUNT(*) FROM vote WHERE answer_model_id = :ans_id AND down_vote = -1", nativeQuery=true)
    public Long findDownVote(@Param("ans_id") Long ans_id);
}
