package com.ohmovie.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ohmovie.dao.ReviewDAO;
import com.ohmovie.vo.ContentDTO;
import com.ohmovie.vo.ReviewVO;

@RestController
@RequestMapping("/api/*")
public class ReviewController {
	
	private static final Logger log = LoggerFactory.getLogger(ReviewController.class);
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	@GetMapping("/{uIdx}/reviews")
	public List<ReviewVO> userReviews(@PathVariable Integer uIdx) {
		return reviewDAO.readReviews(uIdx);
	}

	@GetMapping("/{uIdx}/review/{mIdx}")
	public ContentDTO userReview(@PathVariable Integer uIdx, @PathVariable String mIdx) {
		return reviewDAO.readReview(uIdx, mIdx);
	}
	
	@GetMapping("/{mIdx}/contentReviews")
	public List<ContentDTO> contentReviews(@PathVariable String mIdx) {
		return reviewDAO.itemReview(mIdx);
	}
	
	@PostMapping(value = "/review/new")
	public void create(@RequestBody ReviewVO vo) {
		log.info("ReviewVO: " + vo);
		// {"uIdx":100,"mIdx":"332562", "rContent" : "test"}
		reviewDAO.insertReview(vo);
	}
	
	@DeleteMapping(value = "/review/{rIdx}")
	public void remove(@PathVariable("rIdx") Integer rIdx) {
		log.info("remove: " + rIdx);
		
		reviewDAO.deleteReview(rIdx);
	}
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH},
			value = "/review/{rIdx}")
	public void modify(@RequestBody ReviewVO vo, @PathVariable("rIdx") Integer rIdx) {
		vo.setrIdx(rIdx);
		
		log.info("modify: " + vo);
		reviewDAO.updateReview(vo);
	}

}
