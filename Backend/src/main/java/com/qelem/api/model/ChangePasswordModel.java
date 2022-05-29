package com.qelem.api.model;

import lombok.Data;

@Data
public class ChangePasswordModel {
    private String oldPassword;
    private String newPassword;
}