package com.ohmovie.vo;

public class InterestVO {
	
	private int uNo;
	private int mNo;
	private boolean favorite;
	private int rated;
	private boolean watchlist;
	
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public boolean isFavorite() {
		return favorite;
	}
	public void setFavorite(boolean favorite) {
		this.favorite = favorite;
	}
	public int getRated() {
		return rated;
	}
	public void setRated(int rated) {
		this.rated = rated;
	}
	public boolean isWatchlist() {
		return watchlist;
	}
	public void setWatchlist(boolean watchlist) {
		this.watchlist = watchlist;
	}
	
	@Override
	public String toString() {
		return "InterestVO [uNo=" + uNo + ", mNo=" + mNo + ", favorite=" + favorite + ", rated=" + rated
				+ ", watchlist=" + watchlist + "]";
	}
	
}
