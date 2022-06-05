package com.qelem.api.restdto;

import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.NotBlank;

import lombok.Data;

@Data
public class QuestionForm {
    @NotBlank(message = "The topic can't be blank")
    String topic;
    @NotBlank(message = "The content can't be blank")
    String content;
    List<Long> tagIds = new ArrayList<>();
}
