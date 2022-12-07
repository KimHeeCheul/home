package com.itflix.dao;

import java.util.List;


import com.itflix.dto.Prefer;

public interface PreferDao {
	//회원별 prefer 조회(선호카테고리 조회)
	List<Prefer> selecCgByEmail(String u_email) throws Exception;
	//선호카테고리 삭제
	int preferDelete(String u_email,int cg_no) throws Exception;
	//선호카테고리 선택
	int preferInsert(String u_email,int cg_no) throws Exception;
		//총평점없이 회원선호카테고리 영화리스트 불러오기
	List<Prefer> selectPreferCgMovieList(String u_email,int cg_no) throws Exception;
	
	List<Prefer> selectPreferCgMovieList222(String u_email,int cg_no) throws Exception;
}
