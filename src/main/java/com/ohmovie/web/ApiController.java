package com.ohmovie.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ohmovie.dao.MovieDAO;
import com.ohmovie.vo.MovieVO;

@RestController
@RequestMapping("/api/*")
public class ApiController {
		
	@Autowired
	private MovieDAO movieDAO;

	@GetMapping("/similar/{mIdx}")
	public List<MovieVO> Movie(@PathVariable Integer mIdx) {
		return movieDAO.readMovie(mIdx);
	}

}
