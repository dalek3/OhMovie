package com.ohmovie.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ohmovie.dao.MemberDAO;
import com.ohmovie.vo.MemberVO;

@Controller
@RequestMapping("/auth/*")
public class AuthController {
	
	private static final Logger log = LoggerFactory.getLogger(AuthController.class);
	
	@Autowired
	private MemberDAO memberDAO;
	
	@GetMapping(value="/login")
	public void loginGET(String error, String logout, Model model) throws Exception {	
		log.info("error: " + error);
		log.info("logout: " + logout);
		
		if (error != null) {
			model.addAttribute("error", "잘못된 이메일/비밀번호 입니다.");
		}		
		
		if (logout != null) {
			model.addAttribute("logout", "logout!!");
		}
	}
	
	@GetMapping(value="/register")
	public void registerGET(String error, Model model) throws Exception {

		log.info("error: " + error);
		
		if (error != null) {
			model.addAttribute("error", "이미 이메일 존재합니다.");
		}
		
		log.info("registerGET");
	}
	
	@PostMapping(value="/register")
	public String registerPOST(@ModelAttribute MemberVO vo, String error, Model model ) throws Exception {
		log.info("registerPOST");
		String member = memberDAO.selectByEmail(vo.getuId());
		log.info("registerPOST : " + member);
		if(member == null) {
			
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			vo.setuPw(passwordEncoder.encode(vo.getuPw()));
			memberDAO.insert(vo);

			// 권한 설정
			memberDAO.insertAuth(vo.getuId());
			
			// 회원가입시 로그인 또는 이메일 인증
			
			return "redirect:/";
		}
				
		return "redirect:/auth/register?error";
	}
}
