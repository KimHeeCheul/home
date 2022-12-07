package com.itflix.dao;

import java.util.List;

import com.itflix.dto.Category;

public interface CategoryDao {
	
	//카테고리 번호를 이용한 해당 영화 리스트 출력
	List<Category> selectByNoMovieList(int cg_no) throws Exception;
	//카테고리 전체 출력
	List<Category> selectAll() throws Exception;
	////카테고리별  영화 한개 상세 상세페이지 검색 (리뷰 추가 -리뷰없을시 null표시)
	Category selectByNoByM_NoAndReview(int cg_no,int m_no)throws Exception;
	//카테고리 번호를 이용한 찾기
	Category selectByNo(int no) throws Exception;
	//카테고리 이름을 이용한 찾기
	Category selectByName(String name) throws Exception;
	//카테고리 추가
	int insertCategory(Category category)throws Exception;
	//카테고리 변경
	int updateCategory(Category category)throws Exception;
	//카테고리 삭제
	int deleteCategory(int no)throws Exception;
	//카테고리별 영화 총 갯수
	int countCategory(Integer cg_no)throws Exception;
	//찜한 유저의 카테고리별 영화 갯수
	int countJjim(String u_email,int cg_no) throws Exception;

}
