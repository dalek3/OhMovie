package com.ohmovie.vo;

public class AuthVO {
	
	private String u_id;
	private String auth;
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	
	@Override
	public String toString() {
		return "AuthVO [u_id=" + u_id + ", auth=" + auth + "]";
	}
	
}
