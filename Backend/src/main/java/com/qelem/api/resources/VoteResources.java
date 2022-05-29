package com.qelem.api.resources;


import com.qelem.api.model.AnswerModel;
import com.qelem.api.model.UserModel;
import com.qelem.api.model.VoteModel;

import org.springframework.hateoas.RepresentationModel;

import lombok.Data;

@Data
public class VoteResources extends RepresentationModel<VoteResources> {

    private AnswerModel answerModel;
    private int upVote;
    private int downVote;
    private UserModel author;
    

    public VoteResources(VoteModel vote){
        this.answerModel= vote.getAnswerModel();
        this.upVote = vote.getUpVote();
        this.downVote = vote.getDownVote();
        this.author = vote.getUserModel();
    }
}
