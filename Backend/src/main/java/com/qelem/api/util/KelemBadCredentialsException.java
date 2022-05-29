package com.qelem.api.util;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = org.springframework.http.HttpStatus.BAD_REQUEST, reason = "Incorrect username or password")
public class KelemBadCredentialsException extends BadCredentialsException {

    private static final long serialVersionUID = 1L;

    public KelemBadCredentialsException(String msg) {
        super(msg);
    }
    
}
