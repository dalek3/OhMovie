package com.ohmovie.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ContentsController {

	@GetMapping(value="/item/{id}")
	public String item(Model model, @PathVariable Integer id) throws Exception {
		model.addAttribute("item", id);
		return "contents/item";
	}

	@GetMapping(value="/item/{id}/reviews")
	public String reviews(Model model) throws Exception {
		
		return "contents/reviews";
	}
	
}
