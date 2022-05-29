package com.qelem.api.resources;

import com.qelem.api.model.TagModel;

import org.springframework.hateoas.RepresentationModel;

import lombok.Data;

@Data
public class TagResources extends RepresentationModel<TagResources> {

    private String name;

    public TagResources(TagModel tag) {
        this.name = tag.getTag();
    }
}
