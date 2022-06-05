package com.qelem.api.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString.Exclude;

@Entity
@Data
@Table(name = "tags")
@NoArgsConstructor
public class TagModel {
    @Id
    @GeneratedValue
    private Long id;
    private String name;

    @Exclude
    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "tags")
    @JsonIgnore
    private List<QuestionModel> questions = new ArrayList<>();

    public TagModel(String name) {
        this.name = name;
    }
}
