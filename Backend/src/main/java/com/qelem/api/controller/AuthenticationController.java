package com.qelem.api.controller;

import java.awt.Color;
import java.text.ParseException;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.qelem.api.file.StorageService;
import com.qelem.api.model.KelemUserDetail;
import com.qelem.api.model.RegistrationForm;
import com.qelem.api.model.UserModel;
import com.qelem.api.repository.UserRepository;
import com.qelem.api.restdto.AuthenticationRequest;
import com.qelem.api.restdto.AuthenticationResponse;
import com.qelem.api.restdto.UserDto;
import com.qelem.api.services.MyUserDetailsService;
import com.qelem.api.util.JwtUtil;
import com.qelem.api.util.KelemBadCredentialsException;
import com.qelem.api.util.UserAlreadyExists;
import com.talanlabs.avatargenerator.Avatar;
import com.talanlabs.avatargenerator.GitHubAvatar;
import com.talanlabs.avatargenerator.layers.backgrounds.ColorPaintBackgroundLayer;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping(path = "/api/v1/auth", produces = "application/json", consumes = "application/json")
@CrossOrigin(origins = "*")
@RequiredArgsConstructor
@Slf4j
public class AuthenticationController {
    private final AuthenticationManager authenticationManager;
    private final MyUserDetailsService myUserDetailsService;
    private final JwtUtil jwtUtil;
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final StorageService storageService;

    @PostMapping(value = "/login")
    public ResponseEntity<AuthenticationResponse> createAuthenticationToken(
            @RequestBody AuthenticationRequest authenticationRequest)
            throws Exception {

        try {
            authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(authenticationRequest.getUsername(),
                            authenticationRequest.getPassword()));
            final UserDetails userDetails = myUserDetailsService
                    .loadUserByUsername(authenticationRequest.getUsername());
            final String jwt = jwtUtil.generateToken(userDetails);
            log.info("User {} authenticated", authenticationRequest.getUsername());

            AuthenticationResponse response = new AuthenticationResponse();
            UserModel user = ((KelemUserDetail) userDetails).getUserModel();

            response.setJwt(jwt);
            response.setUser(new UserDto(user));

            return ResponseEntity.ok(response);
        } catch (BadCredentialsException e) {
            log.info("Bad credentials exception {}", e.getMessage());
            throw new KelemBadCredentialsException("Incorrect username or password");
        } catch (UsernameNotFoundException e) {
            log.info("Username not found exception {}", e.getMessage());
            throw new KelemBadCredentialsException("Incorrect username or password");
        }
    }

    @PostMapping("/register")
    @ResponseStatus(HttpStatus.CREATED)
    public UserDto registerUser(@RequestBody RegistrationForm registrationForm) throws ParseException {
        log.info("Register user with user form : {}", registrationForm);

        UserModel user = registrationForm.toUser(passwordEncoder);
        user.setProfilePicture(null);
        user.setRole("MEMBER");

        if (userRepository.existsByUsername(user.getUsername())) {
            log.error("User with username {} already exists", user.getUsername());
            throw new UserAlreadyExists();
        }

        log.info("Saving user : {}", user);
        user = userRepository.save(user);
        log.info("User saved : {}", user);

        try {
            log.info("Generating avatar for user : {}", user);
            Avatar avatar = GitHubAvatar.newAvatarBuilder()
                    .layers(new ColorPaintBackgroundLayer(Color.decode("#f0f0f0")))
                    .padding(20)
                    .build();
            String avatarFile = storageService.store(avatar.createAsPngBytes(System.currentTimeMillis()));

            user.setProfilePicture(avatarFile);

            log.info("Saving user with avatar : {}", user);
            userRepository.save(user);
            log.info("User saved with avatar : {}", user);
        } catch (Exception e) {
            log.error("Error while generating avatar for user : {}", user);
        }

        return new UserDto(user);
    }

}
