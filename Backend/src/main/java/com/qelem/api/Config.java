package com.qelem.api;

import com.qelem.api.model.UserModel;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@Configuration
@EnableJpaAuditing
class Config {

  @Bean
  public AuditorAware<UserModel> auditorProvider() {
    return new SpringSecurityAuditorAware();
  }
}