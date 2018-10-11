package com.ohmovie.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	public String category(Model model) {
		log.info("category");
		
		return "category";
	}

	@GetMapping(value = "/rating")
	public String rating(Model model) {
		log.info("rating");
		return "rating";
	}
	
	@GetMapping(value = "/search")
	public String search(Model model) {
		log.info("search");
		
		return "search";
	}
	
}
