package com.ohmovie.vo;

import java.util.Date;

public class RatingVO {
	
	private Integer uIdx;
	private String mIdx;
	private Integer rated;
	private Date regdate;
	
	public Integer getuIdx() {
		return uIdx;
	}
	public void setuIdx(Integer uIdx) {
		this.uIdx = uIdx;
	}
	public String getmIdx() {
		return mIdx;
	}
	public void setmIdx(String mIdx) {
		this.mIdx = mIdx;
	}
	public Integer getRated() {
		return rated;
	}
	public void setRated(Integer rated) {
		this.rated = rated;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "RatingVO [uIdx=" + uIdx + ", mIdx=" + mIdx + ", rated=" + rated + ", regdate=" + regdate + "]";
	}
	
}
