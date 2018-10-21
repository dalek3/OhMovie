package com.ohmovie.vo;

public class LoginDTO {
	
	private Integer uIdx;		// 회원 식별번호
	private String uId;			// 아이디(email)
	private String uName;
	
	public Integer getuIdx() {
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
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	
	@Override
	public String toString() {
		return "LoginDTO [uIdx=" + uIdx + ", uId=" + uId + ", uName=" + uName + "]";
	}
		
}
