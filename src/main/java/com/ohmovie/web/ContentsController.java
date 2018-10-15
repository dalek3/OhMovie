package com.ohmovie.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContentsController {

	@GetMapping(value="/item/{id}")
	public String item(Model model) throws Exception {
		
		return "contents/item";
	}

	@GetMapping(value="/item/{id}/reviews")
	public String reviews(Model model) throws Exception {
		
		return "contents/reviews";
	}
	
}
