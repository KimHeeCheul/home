package com.itflix.dao;

import java.util.Date;
import java.util.List;

import com.itflix.dto.Movie;

public interface MovieDao {
		
		//영화 전체 리스트(필터링x)
		List<Movie> selectAllNoFilter() throws Exception;
		//영화 리스트 전체 출력
		List<Movie> selectAll() throws Exception;
		//영화 번호로 출력
		Movie selectByNo(int m_no) throws Exception;
		//카테고리 번호로 출력
		List<Movie> selectCategoryNo(int no) throws Exception;
		//영화 제목으로 검색
		List<Movie> selectMovieName(String name) throws Exception;
		//영화 검색 결과 카운트
		int searchCount (String m_name) throws Exception;
		//영화 출연진 이름으로 검색
		List<Movie> selectMovieActor(String name) throws Exception;
		//가장 최근 작성된 리뷰 평점 출력
		Movie selectMovieRecentReview(int no) throws Exception;
		//조회수 높은 순으로 출력
		List<Movie> selectMovieCountList() throws Exception;
		//평점 높은 순으로 출력
		List<Movie> selectMovieGradeList() throws Exception;
		//영화 개봉일 최신순으로 출력
		List<Movie> selectMovieNewDate() throws Exception;
		//영화 개봉일 오래된 순으로 출력
		List<Movie> selectMovieOldDate() throws Exception;
		//영화 번호로 평점 출력
		Movie selectMovieGradeByNo(int no) throws Exception;
		//영화 번호로 조회수 출력
		Movie selectMovieCountByNo(int no) throws Exception;
		//영화 클릭수 증가
		int movieCountPlus(int no) throws Exception;
		
		//배우 이름으로 영화 검색
		List<Movie> searchActor(String name) throws Exception;
		//영화 이름으로 영화 검색
		List<Movie> searchMovie(String name) throws Exception;

		//영화 추가
		//int insertMovie(Movie movie)throws Exception;
		//영화 변경
		int updateMovie(Movie movie)throws Exception;
		//영화 삭제
		int deleteMovie(int no)throws Exception;
		//영화 전체 총 갯수
		int movieAllCount() throws Exception;
		
		//영화추가
		int insertMovie(int m_no,String m_name,
						String m_actor,String m_info,
						String m_image,int m_count,
						Date m_date,String m_url,
						int m_groupno,int m_step,
						int m_depth,int cg_no)throws Exception;
		
		
}