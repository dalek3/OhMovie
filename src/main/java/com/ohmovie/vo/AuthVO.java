package com.ohmovie.vo;

public class AuthVO {
	
	private String auth;
	// private String uType;		// 회원구분(USER:일반, ROOKIE:나도평론가, CRITIC:평론가)
	
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	
	@Override
	public String toString() {
		return "AuthVO [ auth=" + auth + "]";
	}
	
}
