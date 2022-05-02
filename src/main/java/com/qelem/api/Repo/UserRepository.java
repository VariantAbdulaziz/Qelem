package com.qelem.api.Repo;

import java.util.List;

import com.qelem.api.model.UserModel;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserModel, Long>{
    public UserModel findByUsername(String username);
    public List<UserModel> findAllByRole(String role);
}
