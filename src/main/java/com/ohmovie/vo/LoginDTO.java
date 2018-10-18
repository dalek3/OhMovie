package com.ohmovie.vo;

public class LoginDTO {
	
	private Integer uIdx;		// 회원 식별번호
	private String uName;
	
	public Integer getuIdx() {
		return uIdx;
	}
	public void setuIdx(Integer uIdx) {
		this.uIdx = uIdx;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	
	@Override
	public String toString() {
		return "LoginDTO [uIdx=" + uIdx + ", uName=" + uName + "]";
	}
	
}
