package com.qelem.api.util;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.security.authentication.BadCredentialsException;


@ResponseStatus(code = HttpStatus.BAD_REQUEST, reason = "Incorrect Password!")
public class PasswordException extends BadCredentialsException {

    public PasswordException(String msg) {
        super(msg);
    }
}