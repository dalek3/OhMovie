package com.ohmovie.vo;

import java.util.Date;

public class ContentDTO {
	
	private Integer uIdx;
	private Integer mIdx;
	private String uName;
	private String rContent;
	private Date watchdate;
	private Integer liked;
	
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
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public Date getWatchdate() {
		return watchdate;
	}
	public void setWatchdate(Date watchdate) {
		this.watchdate = watchdate;
	}
	public Integer getLiked() {
		return liked;
	}
	public void setLiked(Integer liked) {
		this.liked = liked;
	}
	
	@Override
	public String toString() {
		return "ContentDTO [uIdx=" + uIdx + ", mIdx=" + mIdx + ", uName=" + uName + ", rContent=" + rContent
				+ ", watchdate=" + watchdate + ", liked=" + liked + "]";
	}
	
}
