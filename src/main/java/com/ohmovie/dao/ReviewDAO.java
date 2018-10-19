package com.ohmovie.dao;

import java.util.List;

import com.ohmovie.vo.ReviewVO;

public interface ReviewDAO {

	public void insertReview(ReviewVO vo);
	
	public List<ReviewVO> readReview(Integer uIdx);
	
}
