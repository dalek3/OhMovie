package com.ohmovie.vo;

/* 회원 정보 */
public class UserVO {
	
	private int uno;			// 회원 식별번호
	private String uId;			// 아이디(email)
	private String uPw;			// 비밀번호
	private String uName;		// 회원 닉네임
	private String uType;		// 회원구분(USER:일반, ROOKIE:나도평론가, CRITIC:평론가)
	private String uFlag;		// 계정상태(1:등록, 2:탈퇴)
	private String regDate;		// 회원가입일
	private String lastDate;	// 마지막방문일
	private String oauthId;		// oauth 아이디
	
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
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
	public String getuType() {
		return uType;
	}
	public void setuType(String uType) {
		this.uType = uType;
	}
	public String getuFlag() {
		return uFlag;
	}
	public void setuFlag(String uFlag) {
		this.uFlag = uFlag;
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
	public String getOauthId() {
		return oauthId;
	}
	public void setOauthId(String oauthId) {
		this.oauthId = oauthId;
	}
	
	@Override
	public String toString() {
		return "UserVO [uno=" + uno + ", uId=" + uId + ", uPw=" + uPw + ", uName=" + uName + ", uType=" + uType
				+ ", uFlag=" + uFlag + ", regDate=" + regDate + ", lastDate=" + lastDate + ", oauthId=" + oauthId + "]";
	}
	
}