package com.ohmovie.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/auth/*")
public class AuthController {
	
	private static final Logger logger = LoggerFactory.getLogger(AuthController.class);
	
	@GetMapping(value="/login")
	String login(Model model) throws Exception {
		logger.info("login");
		return "auth/login";
	}
	
	@GetMapping(value="/register")
	String register(Model model) throws Exception {
		logger.info("register");
		return "auth/register";
	}
}
