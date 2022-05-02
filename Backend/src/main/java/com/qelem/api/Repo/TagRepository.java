package com.qelem.api.Repo;


import java.util.List;
import java.util.Optional;

import com.qelem.api.model.TagModel;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface TagRepository extends JpaRepository<TagModel, Long> {
    @Query(value = "select * from tag_model where tag like %:keyTag%", nativeQuery = true)
    List<TagModel> findByTag(@Param("keyTag") String keyTag);
    Optional<TagModel> findById(Long id);
}
