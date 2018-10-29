package com.ohmovie.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohmovie.vo.RatingVO;

@Repository
public class RatingDAOImpl implements RatingDAO {

	@Autowired
	private SqlSession session;
	
	private static final String namespace = "com.ohmovie.mapper.RatingMapper";
	
	@Override
	public void insertRating(RatingVO vo) {

		session.insert(namespace + ".insertRating", vo);
	}

	@Override
	public void updateRating(RatingVO vo) {

		session.update(namespace + ".updateRating", vo);
	}

	@Override
	public RatingVO readRating(Integer uIdx, String mIdx) {
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("uIdx", uIdx);
		paramMap.put("mIdx", mIdx);
		System.out.println(paramMap);
		return session.selectOne(namespace + ".readRating", paramMap);
	}

	@Override
	public List<RatingVO> readRatings(Integer uIdx) {

		return session.selectList(namespace + ".readRatings", uIdx);
	}

	@Override
	public int countRatings(Integer uIdx) {

		return session.selectOne(namespace + ".countRatings", uIdx);
	}

}
