package com.qelem.api.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Transient;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.BreakIterator;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString.Exclude;

@Data
@JsonIgnoreProperties({ "hibernateLazyInitializer", "vote" })
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class UserModel {

    public enum ROLE {
        ADMIN,
        MEMBER;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @Column(unique = true)
    String username;
    String password;
    @NotNull(message = "First name can't be null.")
    @NotBlank(message = "Last name can't be blank.")
    String firstName;
    @NotNull(message = "First name can't be null.")
    @NotBlank(message = "Last name can't be blank.")
    String lastName;
    String role;
    @Column(nullable = true, length = 255)
    private String profilePicture = null;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.REMOVE, mappedBy = "author")
    @Exclude
    private List<QuestionModel> questionModel;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.REMOVE, mappedBy = "author")
    @Exclude
    private List<AnswerModel> answerModel;

    @OneToMany(mappedBy = "author", cascade = CascadeType.REMOVE)
    @Exclude
    private List<QuestionVote> questionVotes;

    @OneToMany(mappedBy = "author", cascade = CascadeType.REMOVE)
    @Exclude
    private List<AnswerVote> answerVotes;

    @Transient
    public String getProfilePicture() {
        return profilePicture == null ? "/files/abebe.jpeg" : "/files/" + profilePicture;
    }

    public boolean isAdmin() {
        return role.equals("ADMIN");
    }

    @PrePersist
    @PreUpdate
    public void ensureNamesTitleCase() {
        firstName = UCharacter.toTitleCase(firstName, BreakIterator.getTitleInstance());
        lastName = UCharacter.toTitleCase(lastName, BreakIterator.getTitleInstance());
    }
}