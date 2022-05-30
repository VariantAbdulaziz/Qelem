package com.qelem.api.services;

import java.util.List;

import com.qelem.api.model.ReportedQuestionModel;
import com.qelem.api.repository.ReportedQuestionRepository;

import org.springframework.stereotype.Service;

@Service
public class ReportedQuestionService {
    ReportedQuestionRepository repository;
    public List<ReportedQuestionModel> listAll(){
        return (List<ReportedQuestionModel>) repository.findAll();
    }
    
}
