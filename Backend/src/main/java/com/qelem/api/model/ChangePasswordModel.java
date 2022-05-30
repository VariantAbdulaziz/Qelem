package com.qelem.api.model;

import javax.validation.constraints.NotBlank;

import lombok.Data;

@Data
public class ChangePasswordModel {
    @NotBlank(message = "The old password can't be blank")
    private String oldPassword;
    @NotBlank(message = "The new password can't be blank")
    private String newPassword;
}