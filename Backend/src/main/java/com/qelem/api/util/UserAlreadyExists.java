package com.qelem.api.util;

import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = org.springframework.http.HttpStatus.CONFLICT, reason = "User already exists")
public class UserAlreadyExists extends RuntimeException {
    
}
