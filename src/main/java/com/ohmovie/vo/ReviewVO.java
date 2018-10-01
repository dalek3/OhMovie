package com.ohmovie.vo;

import java.util.Date;

public class ReviewVO {
	
	private int rNo;
	private int uNo;
	private int mNO;
	private String rContent;
	private int rFlag;
	private Date writedate;
	private int like;
	
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public int getmNO() {
		return mNO;
	}
	public void setmNO(int mNO) {
		this.mNO = mNO;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public int getrFlag() {
		return rFlag;
	}
	public void setrFlag(int rFlag) {
		this.rFlag = rFlag;
	}
	public Date getWritedate() {
		return writedate;
	}
	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	
	@Override
	public String toString() {
		return "ReviewVO [rNo=" + rNo + ", uNo=" + uNo + ", mNO=" + mNO + ", rContent=" + rContent + ", rFlag=" + rFlag
				+ ", writedate=" + writedate + ", like=" + like + "]";
	}
	
}
