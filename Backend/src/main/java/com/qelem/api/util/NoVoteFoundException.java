package com.qelem.api.util;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.BAD_REQUEST)
public class NoVoteFoundException extends RuntimeException {

    public NoVoteFoundException(String msg) {
        super(msg);
    }

}
