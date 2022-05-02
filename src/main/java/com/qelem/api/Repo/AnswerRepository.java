package com.qelem.api.Repo;

import java.util.List;

import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.QuestionModel;
import com.qelem.api.model.VoteModel;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

@Repository
public interface AnswerRepository extends JpaRepository<AnswerModel, Long>{

    /**
     * Returns the list of answers associated with a certain question.
     * @param question
     * @return
     */
    List<AnswerModel> findByQuestion(QuestionModel question);
    @Query(value = "DELETE FROM answer_model WHERE id like %?1",nativeQuery = true)    
    int deleteAnswerById(Long id);

    // @Query(value="SELECT * FROM vote WHERE answer_model_id = :ans_id AND up_vote = 1", nativeQuery=true)
    // public List<Vote> findUpVote(@Param("ans_id") Long ans_id);

    // @Query(value="SELECT * FROM vote_model WHERE answer_model_id = :ans_id AND vote = -1", nativeQuery=true)
    // public List<Vote> findDownVote(@Param("ans_id") Long ans_id);
}