package com.qelem.api.restdto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
public class AnswerForm {
    @NotBlank(message = "Content can't be blank")
    public String content;
    @NotNull(message = "Question id can't be null")
    public Long questionId;
}
