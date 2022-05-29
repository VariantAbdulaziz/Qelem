package com.qelem.api.Repo;

import java.util.List;

import com.qelem.api.model.QuestionModel;
import com.qelem.api.model.TagModel;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionRepository extends JpaRepository<QuestionModel, Long> {

    @Query(value = "select * from question_model where content like %:keyWord%", nativeQuery = true)
    List<QuestionModel> findByContent(@Param("keyWord") String keyWord);

    @Query(value = "SELECT * FROM question_model WHERE MATCH(topic, description, content) "
            + "AGAINST (?1)", nativeQuery = true)
    public Page<QuestionModel> search(String keyWord, Pageable pageable);

    List<QuestionModel> findByTags(TagModel tagModel);

}
