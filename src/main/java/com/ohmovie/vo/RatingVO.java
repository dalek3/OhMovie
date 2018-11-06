package com.ohmovie.vo;

public class RatingVO {
	
	private Integer uIdx;
	private Integer mIdx;
	private Integer rated;
	
	public Integer getuIdx() {
		return uIdx;
	}
	public void setuIdx(Integer uIdx) {
		this.uIdx = uIdx;
	}
	public Integer getmIdx() {
		return mIdx;
	}
	public void setmIdx(Integer mIdx) {
		this.mIdx = mIdx;
	}
	public Integer getRated() {
		return rated;
	}
	public void setRated(Integer rated) {
		this.rated = rated;
	}
	
	@Override
	public String toString() {
		return "RatingVO [uIdx=" + uIdx + ", mIdx=" + mIdx + ", rated=" + rated + "]";
	}
	
}
