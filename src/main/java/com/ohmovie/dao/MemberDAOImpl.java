package com.ohmovie.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohmovie.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession session;
	
	private static String namespace = "com.ohmovie.mapper.MemberMapper";
	
	@Override
	public MemberVO login(String u_id) {
		
		return session.selectOne(namespace+ ".login", u_id);
	}

	@Override
	public MemberVO read(Integer u_idx) {
		
		return session.selectOne(namespace+ ".read", u_idx);
	}

}
