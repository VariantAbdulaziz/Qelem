package com.qelem.api;

import java.awt.Color;
import com.qelem.api.file.StorageService;
import com.qelem.api.model.TagModel;
import com.qelem.api.model.UserModel;
import com.qelem.api.model.UserModel.ROLE;
import com.qelem.api.repository.TagRepository;
import com.qelem.api.repository.UserRepository;
import com.talanlabs.avatargenerator.Avatar;
import com.talanlabs.avatargenerator.GitHubAvatar;
import com.talanlabs.avatargenerator.layers.backgrounds.ColorPaintBackgroundLayer;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
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
	public CommandLineRunner dataLoader(UserRepository userRepository, StorageService storageService) {
		if (userRepository.countByRole("ADMIN") == 0) {
			UserModel admin = new UserModel();
			admin.setUsername("qelem_admin");
			admin.setPassword(encoder.encode("qelem_admin"));
			admin.setFirstName("Grand");
			admin.setLastName("Master");
			admin.setRole(ROLE.ADMIN.name());

			Avatar avatar = GitHubAvatar.newAvatarBuilder()
					.layers(new ColorPaintBackgroundLayer(Color.decode("#000000")))
					.padding(20)
					.build();
			String avatarFile = storageService.store(avatar.createAsPngBytes(1423443L));

			admin.setProfilePicture(avatarFile);

			return args -> {
				userRepository.save(admin);
			};
		}
		return args -> {
		};
	}

	@Bean
	public CommandLineRunner tagLoader(TagRepository tagRepository) {
		if (tagRepository.count() == 0) {
			List<TagModel> tags = Arrays.asList(
					new TagModel("Java"),
					new TagModel("Phyiscs"),
					new TagModel("C++"),
					new TagModel("C#"),
					new TagModel("Astronomy"),
					new TagModel("Astronomy"));

			return args -> {
				tagRepository.saveAll(tags);
			};
		}
		return args -> {
		};
	}
}
