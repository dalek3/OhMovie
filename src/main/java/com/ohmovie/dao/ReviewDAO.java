package com.ohmovie.dao;

import java.util.List;

import com.ohmovie.vo.ContentDTO;
import com.ohmovie.vo.ReviewVO;

public interface ReviewDAO {
	
	public List<ReviewVO> readReviews(Integer uIdx);

	public List<ContentDTO> itemReview(String mIdx);
	
	public void insertReview(ReviewVO vo);
	
	public ContentDTO readReview(Integer uIdx, String mIdx);
	
	public void deleteReview(Integer rIdx);
	
	public void updateReview(ReviewVO vo);
	
}
