package com.qelem.api;

import java.util.Optional;

import com.qelem.api.model.KelemUserDetail;
import com.qelem.api.model.UserModel;

import org.springframework.data.domain.AuditorAware;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

class SpringSecurityAuditorAware implements AuditorAware<UserModel> {

  public Optional<UserModel> getCurrentAuditor() {

    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

    if (authentication == null || !authentication.isAuthenticated()) {
      return null;
    }

    return Optional.of(((KelemUserDetail) authentication.getPrincipal()).getUserModel());
  }
}