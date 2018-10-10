package com.ohmovie.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@GetMapping(value = "/")
	public String home(Model model) {
		logger.info("index");
		
		return "index";
	}

	@GetMapping(value = "/category")
	public String category(Model model) {
		logger.info("category");
		
		return "category";
	}

	@GetMapping(value = "/rating")
	public String rating(Model model) {
		logger.info("rating");
		return "rating";
	}
	
	@GetMapping(value = "/search")
	public String search(Model model) {
		logger.info("search");
		
		return "search";
	}
	
}
