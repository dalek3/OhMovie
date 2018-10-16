package com.ohmovie.dao;

import com.ohmovie.vo.MemberVO;

public interface MemberDAO {

	public MemberVO login(String u_id);
	public MemberVO read(Integer u_idx);
}
