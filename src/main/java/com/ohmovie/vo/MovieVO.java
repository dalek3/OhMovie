package com.ohmovie.vo;

public class MovieVO {

	private String mIdx;
	private Integer similarId;
	
	public String getmIdx() {
		return mIdx;
	}
	public void setmIdx(String mIdx) {
		this.mIdx = mIdx;
	}
	public Integer getSimilarId() {
		return similarId;
	}
	public void setSimilarId(Integer similarId) {
		this.similarId = similarId;
	}
	
	@Override
	public String toString() {
		return "MovieVO [mIdx=" + mIdx + ", similarId=" + similarId + "]";
	}
	
}
