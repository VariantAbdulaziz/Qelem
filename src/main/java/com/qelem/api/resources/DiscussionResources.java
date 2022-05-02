package com.qelem.api.resources;


import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.DiscussionModel;
import com.qelem.api.model.UserModel;

import org.springframework.hateoas.RepresentationModel;

import lombok.Data;

@Data
public class DiscussionResources extends RepresentationModel<DiscussionResources> {

    private String content;
    private UserModel user;
    private AnswerModel answer;

    public DiscussionResources(DiscussionModel discussion){
        this.content = discussion.getContent();
        this.answer = discussion.getAnswer();
        this.user = discussion.getUser();
    }
}
