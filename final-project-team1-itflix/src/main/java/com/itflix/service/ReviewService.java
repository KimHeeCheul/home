package com.itflix.service;

import java.util.Date;
import java.util.List;

import com.itflix.dto.Review;

public interface ReviewService {

	// 리뷰 전체 출력
	List<Review> selectAll() throws Exception;

	// 본인 리뷰 보기(회원아이디 리뷰 보기)
	List<Review> selectWroteReview(String u_email) throws Exception;

	// 최신 리뷰 출력
	List<Review> selectLatest(int m_no) throws Exception;

	// 선택한 리뷰출력
	Review selectByNo(int no) throws Exception;

	// 리뷰 추가
	int insertReview(int r_no, String r_title, String r_content, int r_grade, Date r_date, int r_groupno, int r_step, int r_depth, int m_no, String u_email) throws Exception;

	// 리뷰 수정
	int updateReview(String r_title, String r_content, int r_grade,int r_no) throws Exception;

	// 리뷰 삭제
	int deleteReview(int no) throws Exception;

	// 각 영화 리뷰 총 갯수
	int reviewCount(int m_no) throws Exception;
	
	// 계정별 리뷰 총 갯수
	int reviewCountByEmail(String u_email) throws Exception;

	// 리뷰 추가
	Review insertReview2(Review review) throws Exception;

}
