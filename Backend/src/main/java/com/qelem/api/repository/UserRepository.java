package com.qelem.api.repository;

import java.util.List;
import java.util.Optional;

import com.qelem.api.model.UserModel;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserModel, Long> {
    public Optional<UserModel> findByUsername(String username);

    public List<UserModel> findAllByRole(String role);

    public boolean existsByUsername(String username);
}
