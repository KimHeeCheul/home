package com.itflix.service;

import java.util.List;

import com.itflix.dto.Jjim;

public interface JjimService {
	
	/* 1명 회원 영화 찜 목록보기(리뷰평점포함) */
	List<Jjim> jjimList(String u_email) throws Exception;
	
	/* 1명 회원 영화 찜 카테고리별 목록보기 */
	List<Jjim> jjimCategoryList(String u_email,int cg_no)throws Exception;
	
	/* 영화 찜하기 */
	int jjimInsert(String u_email,int m_no) throws Exception;

	/* 영화 찜하기 해제 */
	int jjimDelete(String u_email,int m_no) throws Exception;

	/* 리뷰의 총평점 조인안하고 불러오기*/
	List<Jjim> jjimListTest5(String u_email) throws Exception;
	
	//유저 이름에 찜한 영화 존재 여부 확인
	boolean jjimUser(String u_email, int m_no) throws Exception;
	
	/*유저 찜 영화 갯수*/
	int jjimCount(String u_email) throws Exception; 
}
