package com.ohmovie.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ohmovie.dao.ReviewDAO;
import com.ohmovie.vo.ReviewVO;

@RestController
@RequestMapping("/api/*")
public class ApiController {
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	@GetMapping("/{idx}/reviews")
	public List<ReviewVO> reviews(@PathVariable Integer idx) {
		List<ReviewVO> reviews = reviewDAO.readReview(idx);
		return reviews;
	}
}
