package com.qelem.api.controller.admin;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.qelem.api.model.KelemUserDetail;
import com.qelem.api.model.UserModel;
import com.qelem.api.repository.UserRepository;
import com.qelem.api.restdto.UpdateUserRoleDto;
import com.qelem.api.restdto.UserDto;
import com.qelem.api.util.ResourceNotFoundException;
import com.qelem.api.util.UnauthorizedAccess;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor
@RestController
@CrossOrigin(origins = "*")
@RequestMapping(path = "/api/v1/admin/users", produces = "application/json")
@Slf4j
public class UsersRestController {
    final UserRepository userRepository;

    @GetMapping()
    public List<UserDto> allUsers(@AuthenticationPrincipal KelemUserDetail user) {
        if (!user.getUserModel().isAdmin()) {
            throw new UnauthorizedAccess("You are not authorized to access this resource");
        }

        final List<UserDto> users = userRepository.findAll().stream()
                .map(UserDto::new)
                .collect(Collectors.toList());

        return users;
    }

    @PutMapping("/{id}")
    public UserDto updateUserRole(@PathVariable() Long id, @AuthenticationPrincipal KelemUserDetail user, @RequestBody UpdateUserRoleDto userDto) {
        if (!user.getUserModel().isAdmin()) {
            throw new UnauthorizedAccess("You are not authorized to access this resource");
        }

        final UserModel userModel = userRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("User not found"));
        
        userModel.setRole(userDto.getRole() == null ? userModel.getRole() : userDto.getRole());
        userRepository.save(userModel);

        log.info("User {} updated role to {}", userModel.getUsername(), userModel.getRole());
        return new UserDto(userModel);
    }

}
