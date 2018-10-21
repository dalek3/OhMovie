package com.ohmovie.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ContentsController {

	
	@GetMapping(value="/item/{movieId}")
	public String item(Model model, @PathVariable Integer movieId) throws Exception {	
		model.addAttribute("movieId", movieId);
		return "contents/item";
	}

	@GetMapping(value="/item/{movieId}/reviews")
	public String reviews(Model model, @PathVariable Integer movieId) throws Exception {
		model.addAttribute("movieId", movieId);
		return "contents/reviews";
	}
	
}
