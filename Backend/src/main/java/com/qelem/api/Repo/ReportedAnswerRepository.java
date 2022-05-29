package com.qelem.api.Repo;

import com.qelem.api.model.ReportedAnswerModel;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReportedAnswerRepository extends JpaRepository<ReportedAnswerModel, Long>{
}
