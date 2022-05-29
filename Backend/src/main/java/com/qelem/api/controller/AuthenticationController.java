package com.qelem.api.controller;

import com.qelem.api.model.AuthenticationRequest;
import com.qelem.api.model.AuthenticationResponse;
import com.qelem.api.services.MyUserDetailsService;
import com.qelem.api.util.JwtUtil;
import com.qelem.api.util.KelemBadCredentialsException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import net.minidev.json.JSONObject;

@RestController
@RequestMapping(path = "/api/v1", produces = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
public class AuthenticationController {
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private MyUserDetailsService myUserDetailsService;
    @Autowired
    private JwtUtil jwtUtil;

    @PostMapping(value = "/authenticate")
    public ResponseEntity<?> createAuthenticationToken(@RequestBody JSONObject loginRequest) throws Exception {

        AuthenticationRequest authenticationRequest = new AuthenticationRequest();

        authenticationRequest.setUsername(loginRequest.get("username").toString());
        authenticationRequest.setPassword(loginRequest.get("password").toString());

        try {
            authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(authenticationRequest.getUsername(),
                            authenticationRequest.getPassword()));
            final UserDetails userDetails = myUserDetailsService
                    .loadUserByUsername(authenticationRequest.getUsername());
            final String jwt = jwtUtil.generateToken(userDetails);
            return ResponseEntity.ok(new AuthenticationResponse(jwt));
        } catch (BadCredentialsException e) {
            throw new KelemBadCredentialsException("Incorrect username or password");
        } catch (UsernameNotFoundException e) {
            throw new KelemBadCredentialsException("Incorrect username or password");
        }
    }
}
