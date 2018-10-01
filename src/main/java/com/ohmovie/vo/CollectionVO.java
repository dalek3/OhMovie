package com.ohmovie.vo;

public class CollectionVO {
	
	private int cNo;
	private int uNo;
	private String cTitle;
	private String cContent;
	
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public String getcTitle() {
		return cTitle;
	}
	public void setcTitle(String cTitle) {
		this.cTitle = cTitle;
	}
	public String getcContent() {
		return cContent;
	}
	public void setcContent(String cContent) {
		this.cContent = cContent;
	}
	
	@Override
	public String toString() {
		return "CollectionVO [cNo=" + cNo + ", uNo=" + uNo + ", cTitle=" + cTitle + ", cContent=" + cContent + "]";
	}
	
}
