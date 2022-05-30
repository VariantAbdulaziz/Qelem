package com.qelem.api.restdto;

import javax.validation.constraints.NotBlank;

import lombok.Data;

@Data
public class QuestionForm {
    @NotBlank(message = "The topic can't be blank")
    String topic;
    @NotBlank(message = "The content can't be blank")
    String content;
}
