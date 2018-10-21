package com.ohmovie.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ohmovie.dao.ReviewDAO;
import com.ohmovie.vo.ContentDTO;
import com.ohmovie.vo.ReviewVO;

@RestController
@RequestMapping("/api/*")
public class ApiController {
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	@GetMapping("/{uIdx}/reviews")
	public List<ReviewVO> userReviews(@PathVariable Integer uIdx) {
		return reviewDAO.readReviews(uIdx);
	}

	@GetMapping("/{uIdx}/review/{mIdx}")
	public ContentDTO userReview(@PathVariable Integer uIdx, @PathVariable Integer mIdx) {
		return reviewDAO.readReview(uIdx, mIdx);
	}
	
	@GetMapping("/{mIdx}/contentReviews")
	public List<ContentDTO> contentReviews(@PathVariable Integer mIdx) {
		return reviewDAO.itemReview(mIdx);
	}
}
