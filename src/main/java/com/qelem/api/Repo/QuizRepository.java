package com.qelem.api.Repo;

import com.qelem.api.model.QuizModel;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface QuizRepository extends JpaRepository<QuizModel, Long>{

}
