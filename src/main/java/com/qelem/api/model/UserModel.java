package com.qelem.api.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Transient;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@JsonIgnoreProperties({"hibernateLazyInitializer", "vote"})
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class UserModel {
    
    public enum ROLE {
        ADMIN,
        MEMBER;
    }
    
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    Long id;
    @Column(unique = true)
    String username;
    String password;
    @NotNull(message="First name can't be null.")
    @NotBlank(message="Last name can't be blank.")
    String firstName;
    @NotNull(message="First name can't be null.")
    @NotBlank(message="Last name can't be blank.")
    String lastName;
    String role;
    @Column(nullable = true, length = 255)
	private String profilePicture;
    // @OneToMany(fetch = FetchType.LAZY)
    // @OnDelete(action = OnDeleteAction.CASCADE)
    // @JoinColumn(name="user")
    // private List<QuestionModel> questionModel;
    // @OneToMany(mappedBy="user")
    // @OnDelete(action = OnDeleteAction.CASCADE)
    // private List<AnswerModel> answerModel;
    @OneToMany(mappedBy="userModel")
    @OnDelete(action = OnDeleteAction.CASCADE)
    private List<VoteModel> vote;
    // public void setId(Long id){
    //     this.id = id;
    // }
    // public void setFirstName(String firstName){
    //     this.firstName = firstName;
    // }
    // public void setLastName(String lastName){
    //     this.lastName = lastName;
    // }
    // public void setUsername(String username){
    //     this.username = username;
    // }
    // public void setPassword(String password){
    //     this.password = password;
    // }
    // public void setRole(String role){
    //     this.role = role;
    // }
    // public void setProfilePicture(String profilePicture){
    //     this.profilePicture = profilePicture;
    // }
    // public void setVote(List<VoteModel> votes){
    //     this.vote = votes;
    // }
    // public String getFirstName(){
    //     return this.firstName;
    // }
    // public String getLastName(){
    //     return this.lastName;
    // }
    // public String getUsername(){
    //     return this.username;
    // }
    // public String getPassword(){
    //     return this.password;
    // }
    // public String getRole(){
    //     return this.role;
    // }
    // public List<VoteModel> getVote(){
    //     return this.vote;
    // }
    // public Long getId(){
    //     return this.id;
    // }
    @Transient
    public String getProfilePicture() {
        if (profilePicture.length() == 0) {
            return "/user-photos/1/abebe.jpeg";
        }
         
        return "/user-photos/" + id + "/" + profilePicture;
    }
}