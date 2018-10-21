package com.ohmovie.dao;

import com.ohmovie.vo.LoginDTO;
import com.ohmovie.vo.MemberVO;

public interface MemberDAO {

	public MemberVO login(String u_id);
	
	public LoginDTO readIdx(Integer u_idx);

	public MemberVO readId(String u_id);
	
	public String selectByEmail(String uId);
	
	public void insert(MemberVO vo);
	
	public void insertAuth(String uId);
	
	public void updateMember(Integer uIdx, String uName);
	
	public void updatePassword(Integer uIdx, String uPw);

	public void signout(Integer uIdx);
}
