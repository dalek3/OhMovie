package com.ohmovie.web;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ohmovie.dao.MemberDAO;
import com.ohmovie.vo.LoginDTO;
import com.ohmovie.vo.MemberVO;

@RequestMapping("/profile/*")
@Controller
public class ProfileController {
	
	@Autowired
	private MemberDAO memberDAO;

	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/{uIdx}")
	public String profile(Model model,@PathVariable Integer uIdx) throws Exception {
		LoginDTO member = memberDAO.readIdx(uIdx);
			
		model.addAttribute("member", member);
		return "/profile/userReviews";
	}

	@GetMapping("/{uIdx}/reviews")
	public String userReviews(Model model,@PathVariable Integer uIdx) throws Exception {
		LoginDTO member = memberDAO.readIdx(uIdx);
				
		model.addAttribute("member", member);
		
		return "/profile/userReviews";
	}
	
	@GetMapping("/{uIdx}/review/{mIdx}")
	public String userReview(Model model, @PathVariable Integer uIdx, @PathVariable Integer mIdx) throws Exception {
		LoginDTO member = memberDAO.readIdx(uIdx);
				
		model.addAttribute("member", member);
		return "/profile/userReview";
	}
	
	@GetMapping("/{uIdx}/ratings")
	public String diary(Model model,@PathVariable Integer uIdx) throws Exception {
		LoginDTO member = memberDAO.readIdx(uIdx);
				
		model.addAttribute("member", member);
		return "/profile/diary";
	}
	
	@GetMapping("/{uIdx}/signout")
	public String signout(HttpSession session, Model model, @PathVariable Integer uIdx) {
		log.info("signout");
		memberDAO.signout(uIdx);
		
		session.invalidate();
		return "redirect:/";
	}
	
	@PostMapping("/{uIdx}/modify")
	public String modify(@ModelAttribute MemberVO vo, Model model, @PathVariable Integer uIdx) throws Exception {
		log.info("modify");
		
		memberDAO.updateMember(uIdx, vo.getuName());
		return "redirect:/setting";
	}
	
	@PostMapping("/{uIdx}/changepw")
	public String changepwPOST(@ModelAttribute MemberVO vo, Model model, @PathVariable Integer uIdx) throws Exception {
		log.info("changepwPOST");
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		vo.setuPw(passwordEncoder.encode(vo.getuPw()));
		memberDAO.updatePassword(uIdx, vo.getuPw());
		return "redirect:/setting";
	}
	
}
