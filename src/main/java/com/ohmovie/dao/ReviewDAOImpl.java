package com.ohmovie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	public List<ReviewVO> readReview(Integer u_idx) {
		System.out.println(u_idx);
		return session.selectList(namespace + ".readReview", u_idx);
	}

}
