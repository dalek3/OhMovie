package com.ohmovie.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ohmovie.dao.RatingDAO;
import com.ohmovie.vo.RatingVO;

@RestController
@RequestMapping("/api/*")
public class RatingController {
	
	private static final Logger log = LoggerFactory.getLogger(RatingController.class);
	
	@Autowired
	private RatingDAO ratingDAO;
	
	@GetMapping("/{uIdx}/ratings/counts")
	public int countRatings(@PathVariable Integer uIdx) {
		return ratingDAO.countRatings(uIdx);
	}
	
	@GetMapping("/{uIdx}/ratings")
	public List<RatingVO> userRatings(@PathVariable Integer uIdx){
		return ratingDAO.readRatings(uIdx);
	}
	
	@GetMapping("/{uIdx}/rating/{mIdx}")
	public RatingVO userRating(@PathVariable Integer uIdx,
			@PathVariable Integer mIdx) {
		return ratingDAO.readRating(uIdx, mIdx);
	}
	
	@PostMapping(value = "/rating/{uIdx}/{mIdx}/new")
	public void create(@RequestBody RatingVO vo,
			@PathVariable("uIdx") Integer uIdx,
			@PathVariable("mIdx") Integer mIdx) {
		
		// {"uIdx":100,"mIdx":"332562", "rated" : "test"}
		log.info("ADD RatingVO: " + vo);
		ratingDAO.insertRating(vo);
	}
	
	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH},
			value = "/rating/{uIdx}/{mIdx}")
	public void modify(@RequestBody RatingVO vo,
			@PathVariable("uIdx") Integer uIdx,
			@PathVariable("mIdx") Integer mIdx) {
		vo.setuIdx(uIdx);
		vo.setmIdx(mIdx);
		
		log.info("modify RatingVO: " + vo);
		ratingDAO.updateRating(vo);
	}

}
