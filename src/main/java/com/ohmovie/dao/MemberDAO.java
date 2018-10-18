package com.ohmovie.dao;

import com.ohmovie.vo.LoginDTO;
import com.ohmovie.vo.MemberVO;

public interface MemberDAO {

	public MemberVO login(String u_id);
	
	public LoginDTO read(Integer u_idx);
	
	public String selectByEmail(String u_id);
	
	public void insert(MemberVO vo);
	
	public void insertAuth(String u_id);
}
