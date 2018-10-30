package com.ohmovie.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ohmovie.dao.MemberDAO;

@Controller
public class HomeController {
	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private MemberDAO memberDAO;
	
	@GetMapping(value = "/")
	public String home(Model model) {
		log.info("index");
		return "index";
	}

	@GetMapping(value = "/category")
	public void category(Model model) {
		log.info("category");
	}
	
	@GetMapping(value = "/search", params = { "q" })
	public void search(Model model, String q) {
		log.info("search q = " + q);
		model.addAttribute("query", q);
	}
	
	@GetMapping(value = "/rating")
	public void rating(Model model) {
		log.info("rating");
	}
	
	@GetMapping(value = "/setting")
	public void setting(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		log.info(""+ memberDAO.readId(auth.getName()));
		model.addAttribute("member", memberDAO.readId(auth.getName()));
	}
	
}
