package com.ohmovie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohmovie.vo.MovieVO;

@Repository
public class MovieDAOImpl implements MovieDAO {

	@Autowired
	private SqlSession session;
	
	private static final String namespace = "com.ohmovie.mapper.MovieMapper";
	
	@Override
	public List<MovieVO> readMovie(String mId) {
		
		return session.selectList(namespace + ".readMovie", mId);
	}

}
