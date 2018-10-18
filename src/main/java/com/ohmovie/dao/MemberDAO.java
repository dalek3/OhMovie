package com.ohmovie.dao;

import com.ohmovie.vo.LoginDTO;
import com.ohmovie.vo.MemberVO;

public interface MemberDAO {

	public MemberVO login(String u_id);
	
	public LoginDTO read(Integer u_idx);
	
	public MemberVO selectByEmail(String u_id);
	
	public void insert(MemberVO vo);
}
