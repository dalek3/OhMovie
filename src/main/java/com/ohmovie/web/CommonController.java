package com.ohmovie.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommonController {

	private static final Logger log = LoggerFactory.getLogger(CommonController.class);
	
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		
		log.info("access Denied : " + auth);
		model.addAttribute("msg", "알 수 없는 에러가 발생했어요 :(");
	}
	
	@PostMapping("/logout")
	public void logoutPOST() {
		
		log.info("post custom logout");
	}
	
	@GetMapping(value = "errors")
    public ModelAndView renderErrorPage(HttpServletRequest httpRequest) {
         
        ModelAndView errorPage = new ModelAndView("errorPage");
        String errorMsg = "";
        int httpErrorCode = getErrorCode(httpRequest);
 
        switch (httpErrorCode) {
            case 400: {
                errorMsg = "400. Bad Request";
                break;
            }
            case 401: {
                errorMsg = "401. Unauthorized";
                break;
            }
            case 404: {
                errorMsg = "404. 엇, 찾으시는 페이지가 존재하지 않아요 :(";
                break;
            }
            case 500: {
                errorMsg = "500. Internal Server Error";
                break;
            }
        }
        errorPage.addObject("errorMsg", errorMsg);
        return errorPage;
    }
     
    private int getErrorCode(HttpServletRequest httpRequest) {
        return (Integer) httpRequest
          .getAttribute("javax.servlet.error.status_code");
    }
}
