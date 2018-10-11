package com.ohmovie.vo;

import java.util.List;

/* 회원 정보 */
public class MemberVO {
	
//	private int uNo;			// 회원 식별번호
//	private String uType;		// 회원구분(USER:일반, ROOKIE:나도평론가, CRITIC:평론가)
//	private String uFlag;		// 계정상태(1:등록, 2:탈퇴)
//	private String oauthId;		// oauth 아이디
	private String u_id;			// 아이디(email)
	private String u_pw;			// 비밀번호
	private String u_name;		// 회원 닉네임
	private String regDate;		// 회원가입일
	private String updateDate;	// 마지막방문일
	private List<AuthVO> authList;
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pw() {
		return u_pw;
	}
	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	public List<AuthVO> getAuthList() {
		return authList;
	}
	public void setAuthList(List<AuthVO> authList) {
		this.authList = authList;
	}
	
	@Override
	public String toString() {
		return "MemberVO [u_id=" + u_id + ", u_pw=" + u_pw + ", u_name=" + u_name + ", regDate=" + regDate
				+ ", updateDate=" + updateDate + ", authList=" + authList + "]";
	}
	
}