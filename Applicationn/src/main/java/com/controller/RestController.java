package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.User;
import com.repository.UserRepository;
import com.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/")
	public String hello() {
		return "This is home page";
	}
	
	@GetMapping("/saveuser")
	public String saveUSer(@RequestParam String username, @RequestParam String password) {
		User user = new User(username, password);
		userService.saveMyUser(user);
		//userRepository.save(user);
		return "User Saved"; 
	}
}  
