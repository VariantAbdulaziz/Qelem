package com.qelem.api.Repo;


import com.qelem.api.model.ReportedQuestionModel;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ReportedQuestionRepository extends JpaRepository<ReportedQuestionModel, Long>{
    // public List<ReportedQuestionModel> findByQuestion(QuestionModel question);
}
