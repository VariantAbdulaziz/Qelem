package com.qelem.api.util;

import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = org.springframework.http.HttpStatus.INTERNAL_SERVER_ERROR, reason = "Unknown server error")
public class UnknownServerException extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public UnknownServerException(String message) {
        super(message);
    }

    public UnknownServerException() {
        super("Unknown server error");
    }
}
