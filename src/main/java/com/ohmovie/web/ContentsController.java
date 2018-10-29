package com.ohmovie.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ContentsController {

	
	@GetMapping(value="/item/{mIdx}")
	public String item(Model model, @PathVariable Integer mIdx) throws Exception {	
		model.addAttribute("mIdx", mIdx);
		return "contents/item";
	}

	@GetMapping(value="/item/{mIdx}/reviews")
	public String reviews(Model model, @PathVariable Integer mIdx) throws Exception {
		model.addAttribute("mIdx", mIdx);
		return "contents/reviews";
	}
	
}
