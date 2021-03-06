package com.ohmovie.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohmovie.vo.ContentDTO;
import com.ohmovie.vo.ReviewVO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	private SqlSession session;
	
	private static final String namespace = "com.ohmovie.mapper.ReviewMapper";
	
	@Override
	public void insertReview(ReviewVO vo) {
		session.insert(namespace + ".insertReview", vo);		
	}

	@Override
	public List<ReviewVO> readReviews(Integer uIdx) {

		return session.selectList(namespace + ".readReviews", uIdx);
	}

	@Override
	public ContentDTO readReview(Integer uIdx, Integer mIdx) {
		
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("uIdx", uIdx);
		paramMap.put("mIdx", mIdx);
		System.out.println(paramMap);
		return session.selectOne(namespace + ".readReview", paramMap);
	}
	
	@Override
	public List<ContentDTO> itemReview(String mIdx) {
		
		return session.selectList(namespace + ".itemReview", mIdx);
	}

	@Override
	public void deleteReview(Integer uIdx, Integer mIdx) {
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("uIdx", uIdx);
		paramMap.put("mIdx", mIdx);
		System.out.println(paramMap);
		session.delete(namespace + ".deleteReview", paramMap);
	}

	@Override
	public void updateReview(ReviewVO vo) {
		
		session.insert(namespace + ".updateReview", vo);
	}

}
