package com.ohmovie.dao;

import java.util.List;

import com.ohmovie.vo.ContentDTO;
import com.ohmovie.vo.ReviewVO;

public interface ReviewDAO {

	public void insertReview(ReviewVO vo);
	
	public List<ReviewVO> readReviews(Integer uIdx);
	
	public ContentDTO readReview(Integer uIdx, Integer mIdx);

	public List<ContentDTO> itemReview(Integer mIdx);
	
}
