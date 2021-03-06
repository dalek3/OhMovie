package com.ohmovie.vo;

import java.util.Date;

public class ReviewVO {
	
	private Integer uIdx;
	private Integer mIdx;
	private String rContent;
	private Date watchdate;
	private Integer liked;
	private Date writedate;
	private Date updatedate;

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

	public Integer getLike() {
		return liked;
	}

	public void setLike(Integer liked) {
		this.liked = liked;
	}

	public Date getWritedate() {
		return writedate;
	}

	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}

	public Date getUpdatedate() {
		return updatedate;
	}

	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}

	@Override
	public String toString() {
		return "ReviewVO [uIdx=" + uIdx + ", mIdx=" + mIdx + ", rContent=" + rContent
				+ ", watchdate=" + watchdate + ", liked=" + liked + ", writedate=" + writedate + ", updatedate="
				+ updatedate + "]";
	}

}
