package com.ohmovie.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/profile/*")
@Controller
public class ProfileController {
	
	@GetMapping("/")
	public String profile() throws Exception {
		
		return "/profile/stats";
	}
	
	@GetMapping("/reviews")
	public void reviews() throws Exception {
		
	}
	
	@GetMapping("/review")
	public void review() throws Exception {
		
	}
	
}
