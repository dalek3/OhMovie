package com.ohmovie.web;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("index");
		
		return "index";
	}

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(Model model) {
		logger.info("category");
		
		return "category";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Model model) {
		logger.info("search");
		
		return "search";
	}
	
}
