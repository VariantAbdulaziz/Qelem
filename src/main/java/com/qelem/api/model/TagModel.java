package com.qelem.api.model;



import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer"})
@Data
public class TagModel {
    @Id
    @GeneratedValue
    private Long id;
    private String tag;
    // @OneToMany(mappedBy="tags")
    // List<QuestionModel> questionModel;    
}
