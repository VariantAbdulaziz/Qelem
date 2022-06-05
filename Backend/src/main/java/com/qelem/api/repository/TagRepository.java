package com.qelem.api.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.qelem.api.model.TagModel;

public interface TagRepository extends JpaRepository<TagModel, Long> {
    List<TagModel> findAllByNameContainingIgnoringCase(String name);

    Optional<TagModel> findById(Long id);
}
