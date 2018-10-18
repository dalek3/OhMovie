package com.ohmovie.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ohmovie.dao.MemberDAO;
import com.ohmovie.vo.LoginDTO;

@RequestMapping("/profile/*")
@Controller
public class ProfileController {
	
	@Autowired
	private MemberDAO memberDAO;
	
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/{idx}")
	public String profile(Model model,@PathVariable Integer idx) throws Exception {
		LoginDTO member = memberDAO.read(idx);
		log.info("profile stats : " + member);		
		model.addAttribute("member", member);
		return "/profile/stats";
	}

	@GetMapping("/{idx}/reviews")
	public String reviews(Model model,@PathVariable Integer idx) throws Exception {
		LoginDTO member = memberDAO.read(idx);
		log.info("profile stats : " + member);		
		model.addAttribute("member", member);
		return "/profile/reviews";
	}
	
	@GetMapping("/{idx}/review")
	public String review(Model model,@PathVariable Integer idx) throws Exception {
		LoginDTO member = memberDAO.read(idx);
		log.info("profile stats : " + member);		
		model.addAttribute("member", member);
		return "/profile/review";
	}
	
	@GetMapping("/{idx}/diary")
	public String diary(Model model,@PathVariable Integer idx) throws Exception {
		LoginDTO member = memberDAO.read(idx);
		log.info("profile stats : " + member);		
		model.addAttribute("member", member);
		return "/profile/diary";
	}
	
	
}
