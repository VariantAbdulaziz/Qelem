package com.qelem.api;


import java.util.List;

import com.qelem.api.Repo.QuestionRepository;
import com.qelem.api.Repo.TagRepository;
import com.qelem.api.Repo.UserRepository;
import com.qelem.api.model.QuestionModel;
import com.qelem.api.model.TagModel;
import com.qelem.api.model.UserModel;
import com.qelem.api.model.UserModel.ROLE;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.annotation.Order;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;

@SpringBootApplication
public class ApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(ApiApplication.class, args);
	}

	@Autowired
	PasswordEncoder encoder;
	UserRepository userRepo;
	TagRepository tagRepo;
	@Bean
    public MultipartResolver multipartResolver() {        
        return new StandardServletMultipartResolver();
    }
	@Bean
	public CommandLineRunner dataLoader(UserRepository repo) {
		UserModel admin = new UserModel();
		admin.setUsername("admin");
		admin.setPassword(encoder.encode("admin"));
		admin.setFirstName("admin");
		admin.setLastName("admin");
		admin.setRole(ROLE.ADMIN.name());
		admin.setProfilePicture("abebe.jpeg");
		return args -> {
			repo.save(admin);
		};
	}
	@Bean
	public CommandLineRunner tagLoader(TagRepository repo) {
		TagModel tag = new TagModel();
		tag.setTag("#Biology");
		return args -> {
			repo.save(tag);
		};
	}

	// @Bean
	// @Order(3)
	// public CommandLineRunner questionLoader(QuestionRepository repo){
	// 	QuestionModel question = new QuestionModel();
	// 	// UserModel admin = userRepo.findByUsername("admin");
	// 	List<TagModel> tag = tagRepo.findByTag("#Biology");
	// 	question.setContent("The content from command line");
	// 	question.setStatus("UANSWERED");
	// 	question.setTopic("The topic from commandline runner");
	// 	// question.setUser(admin);
	// 	// question.setTags(tag.get(0));
	// 	return args ->{
	// 		repo.save(question);
	// 	};
	// }
	

}
