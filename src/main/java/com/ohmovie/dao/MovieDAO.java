package com.ohmovie.dao;

import java.util.List;

import com.ohmovie.vo.MovieVO;

public interface MovieDAO {

	public List<MovieVO> readMovie(Integer mIdx);
	
}
