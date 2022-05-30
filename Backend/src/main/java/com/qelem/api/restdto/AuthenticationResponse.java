package com.qelem.api.restdto;

import lombok.Data;

@Data
public class AuthenticationResponse {
   public String jwt;

   public UserDto user;
}
