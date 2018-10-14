package com.ohmovie.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping(value = "/")
	public String home(Model model) {
		log.info("index");
		
		return "index";
	}

	@GetMapping(value = "/category")
	public void category(Model model) {
		log.info("category");
	}
	
	@GetMapping(value = "/search")
	public void search(Model model) {
		log.info("search");	
	}
	
	@GetMapping(value = "/rating")
	public void rating(Model model) {
		log.info("rating");
	}
	
	@GetMapping(value = "/setting")
	public void setting(Model model) {
		log.info("setting");	
	}
	
}
