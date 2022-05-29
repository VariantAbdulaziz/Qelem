package com.qelem.api.model;

import java.util.Arrays;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Data;

/**
 * A custom user detail. Totally aware of the awful naming. To be fixed.
 */
@Data
public class MyUserDetail implements UserDetails {

    private UserModel author;
    public MyUserDetail(UserModel user) {
        this.author = user;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return Arrays.asList(new SimpleGrantedAuthority("ROLE_" + this.author.role));
    }

    @Override
    public String getPassword() {
        return author.getPassword();
    }

    @Override
    public String getUsername() {
        // TODO Auto-generated method stub
        return author.getUsername();
    }

    @Override
    public boolean isAccountNonExpired() {
        // just for now we return True
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        // just for now we return True
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        // just for now we return True
        return true;
    }

    @Override
    public boolean isEnabled() {
        // just for now we return True
        return true;
    }
    
}
