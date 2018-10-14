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
	
	private static final Logger log = LoggerFactory.getLogger(AuthController.class);
	
	@GetMapping(value="/login")
	public void loginGET(String error, String logout, Model model) throws Exception {	
		log.info("error: " + error);
		log.info("logout: " + logout);
		
		if (error != null) {
			model.addAttribute("error", "잘못된 이메일/비밀번호 입니다.");
		}		
		
		if (logout != null) {
			model.addAttribute("logout", "logout!!");
		}
	}
	
	@GetMapping(value="/register")
	public void register(Model model) throws Exception {
		log.info("register");
	}
}
