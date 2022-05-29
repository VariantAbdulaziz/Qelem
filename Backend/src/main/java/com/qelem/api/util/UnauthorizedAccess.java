package com.qelem.api.util;

import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = org.springframework.http.HttpStatus.FORBIDDEN, reason = "Access denied")
public class UnauthorizedAccess extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public UnauthorizedAccess(String message) {
        super(message);
    }
}
