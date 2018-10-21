package com.ohmovie.dao;

import java.util.HashMap;
import java.util.Map;

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
	public LoginDTO readIdx(Integer u_idx) {
		
		return session.selectOne(namespace+ ".readIdx", u_idx);
	}
	
	@Override
	public MemberVO readId(String u_id) {
		
		return session.selectOne(namespace+ ".readId", u_id);
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

	@Override
	public void signout(Integer uIdx) {
		session.delete(namespace + ".signout", uIdx);
		
	}

	@Override
	public void updateMember(Integer uIdx, String uName) {
		Map<String, Object> paramMap = new HashMap<>();
		
		paramMap.put("uIdx", uIdx);
		paramMap.put("uName", uName);
		session.update(namespace + ".updateMember", paramMap);
	}

	@Override
	public void updatePassword(Integer uIdx, String uPw) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("uIdx", uIdx);
		paramMap.put("uPw", uPw);
		session.update(namespace + ".updatePassword", paramMap);
	}



}
