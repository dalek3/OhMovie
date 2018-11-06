package com.ohmovie.dao;

import java.util.List;

import com.ohmovie.vo.RatingVO;

public interface RatingDAO {

	public void insertRating(RatingVO vo);
	
	public void updateRating(RatingVO vo);
	
	public RatingVO readRating(Integer uIdx, Integer mIdx);
	
	public List<RatingVO> readRatings(Integer uIdx);
	
	public List<RatingVO> readAllRatings();

	public int countRatings(Integer uIdx);
	
	public RatingVO predRating(Integer uIdx, Integer mIdx);
}
