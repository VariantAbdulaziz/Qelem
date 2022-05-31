package com.qelem.api.repository;

import com.qelem.api.model.QuizModel;

import org.springframework.data.jpa.repository.JpaRepository;

public interface QuizRepository extends JpaRepository<QuizModel, Long> {

}
