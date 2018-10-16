package com.ohmovie.vo;

import java.util.List;

/* 회원 정보 */
public class MemberVO {
	
	private Integer uIdx;		// 회원 식별번호
	private String uId;			// 아이디(email)
	private String uPw;			// 비밀번호
	private String uName;		// 회원 닉네임
	private String regDate;		// 회원가입일
	private String lastDate;	// 마지막방문일
//	private String oauthId;		// oauth 아이디

	private List<AuthVO> authList;

	public int getuIdx() {
		return uIdx;
	}
	public void setuIdx(Integer uIdx) {
		this.uIdx = uIdx;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getuPw() {
		return uPw;
	}
	public void setuPw(String uPw) {
		this.uPw = uPw;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getLastDate() {
		return lastDate;
	}
	public void setLastDate(String lastDate) {
		this.lastDate = lastDate;
	}
	
	public List<AuthVO> getAuthList() {
		return authList;
	}

	public void setAuthList(List<AuthVO> authList) {
		this.authList = authList;
	}

	@Override
	public String toString() {
		return "MemberVO [uIdx=" + uIdx + ", uId=" + uId + ", uPw=" + uPw + ", uName=" + uName + ", regDate=" + regDate
				+ ", updateDate=" + lastDate + ", authList=" + authList + "]";
	}
	
}