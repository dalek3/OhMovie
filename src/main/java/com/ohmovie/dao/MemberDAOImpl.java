package com.ohmovie.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohmovie.vo.LoginDTO;
import com.ohmovie.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession session;
	
	private static final String namespace = "com.ohmovie.mapper.MemberMapper";
	
	@Override
	public MemberVO login(String u_id) {
		
		return session.selectOne(namespace+ ".login", u_id);
	}

	@Override
	public LoginDTO read(Integer u_idx) {
		
		return session.selectOne(namespace+ ".read", u_idx);
	}

	@Override
	public void insert(MemberVO vo) {
		session.insert(namespace + ".insert", vo);
	}
	
	@Override
	public void insertAuth(String u_id) {
		session.insert(namespace + ".insertAuth", u_id);	
	}

	@Override
	public String selectByEmail(String u_id) {
		
		return session.selectOne(namespace + ".selectByEmail", u_id);
	}



}
