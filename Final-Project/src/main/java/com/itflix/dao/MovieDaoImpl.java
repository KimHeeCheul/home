package com.itflix.dao;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itflix.dto.Movie;
import com.itflix.mapper.Movie_Mapper;

@Repository
public class MovieDaoImpl implements MovieDao {
	
	@Autowired
	private Movie_Mapper movie_Mapper;

	public MovieDaoImpl() {
	}
	
	public MovieDaoImpl(Movie_Mapper movie_Mapper){
		this.movie_Mapper=movie_Mapper;
	}
	
	public void setMovie_Mapper(Movie_Mapper movie_Mapper) {
		this.movie_Mapper = movie_Mapper;
	}
	//영화 전체 리스트(필터링x)
	public List<Movie> selectAllNoFilter()throws Exception{
		List<Movie> movieAllList= movie_Mapper.selectAllNoFilter();
		return movieAllList;
	}
	
	//영화 리스트 전체 출력
	@Override
	public List<Movie> selectAll() throws Exception {
		List<Movie> movieList= movie_Mapper.selectAll();
		return movieList;
	}
	
	//영화 번호로 출력
	@Override
	public Movie selectByNo(int m_no) throws Exception {
		Movie movie = movie_Mapper.selectByNo(m_no); 
		return movie;
	}
	
	//카테고리 번호로 출력
	@Override
	public List<Movie> selectCategoryNo(int cg_no) throws Exception {
		List<Movie> movieList = movie_Mapper.selectCategoryNo(cg_no); 
		return movieList;
	}

	//영화 제목으로 검색
	@Override
	public List<Movie> selectMovieName(String m_name) throws Exception {
		List<Movie> movieList= movie_Mapper.selectMovieName(m_name);
		return movieList;
	}
	
	//영화 검색 결과 카운트 
	public int searchCount (String m_name)throws Exception{
		int  searchCount=movie_Mapper.searchCount(m_name);
		return searchCount;
	}
	
	//영화 출연진 이름으로 검색
	@Override
	public List<Movie> selectMovieActor(String m_actor) throws Exception {
		List<Movie> movieList= movie_Mapper.selectMovieActor(m_actor);
		return movieList;
	}
	
	//가장 최근 작성된 리뷰 평점 출력
	@Override
	public Movie selectMovieRecentReview(int m_no) throws Exception {
		Movie movie = movie_Mapper.selectMovieRecentReview(m_no); 
		return movie;
	}
	
	//조회수 높은 순으로 출력
	@Override
	public List<Movie> selectMovieCountList() throws Exception {
		List<Movie> movieList = movie_Mapper.selectMovieCountList();
		return movieList;
	}
	
	//평점 높은 순으로 출력
	@Override
	public List<Movie> selectMovieGradeList() throws Exception {
		List<Movie> movieList = movie_Mapper.selectMovieGradeList();
		return movieList;
	}

	//영화 개봉일 최신순으로 출력
	@Override
	public List<Movie> selectMovieNewDate() throws Exception {
		List<Movie> movieList = movie_Mapper.selectMovieNewDate();
		return movieList;
	}

	//영화 개봉일 오래된 순으로 출력
	@Override
	public List<Movie> selectMovieOldDate() throws Exception {
		List<Movie> movieList = movie_Mapper.selectMovieOldDate();
		return movieList;
	}

	//영화 번호로 평점 출력
	@Override
	public Movie selectMovieGradeByNo(int m_no) throws Exception {
		Movie movie = movie_Mapper.selectMovieGradeByNo(m_no); 
		return movie;
	}
	
	//영화 번호로 조회수 출력
	@Override
	public Movie selectMovieCountByNo(int m_no) throws Exception {
		Movie movie = movie_Mapper.selectMovieCountByNo(m_no); 
		return movie;
	}

	//영화 클릭수 증가
	@Override
	public int movieCountPlus(int m_no) throws Exception {
		int movie = movie_Mapper.movieCountPlus(m_no); 
		return movie;
	}

	/*
	 * //영화 추가
	 * 
	 * @Override public int insertMovie(Movie movie) throws Exception { int
	 * insertMovie = movie_Mapper.insertMovie(movie); return insertMovie; }
	 */

	//영화 변경
	@Override
	public int updateMovie(Movie movie) throws Exception {
		int updateMovie = movie_Mapper.updateMovie(movie);
		return updateMovie;
	}

	//영화 삭제
	@Override
	public int deleteMovie(int m_no) throws Exception {
		int deleteMovie = movie_Mapper.deleteMovie(m_no);
		return deleteMovie;
	}
	//영화 전체 총 갯수
	@Override
	public int movieAllCount()throws Exception{
		int movieAllCount = movie_Mapper.movieAllCount();
		return movieAllCount;
	}
	
	//배우 이름으로 영화 검색
	@Override
	public List<Movie> searchActor(String name) throws Exception {
		List<Movie> searchActor = movie_Mapper.searchActor(name);
		return searchActor;
	}
	
	//영화 이름으로 영화 검색
	@Override
	public List<Movie> searchMovie(String name) throws Exception {
		List<Movie> searchMovie =movie_Mapper.searchMovie(name);
		return searchMovie;
	}
	
	//영화 추가
	@Override
	public int insertMovie(int m_no, String m_name, String m_actor, String m_info, String m_image, int m_count,
			Date m_date, String m_url, int m_groupno, int m_step, int m_depth, int cg_no) throws Exception {
		int insertMovie =movie_Mapper.insertMovie(m_no, m_name, m_actor, m_info, m_image, m_count, m_date, m_url, m_groupno, m_step, m_depth, cg_no);
		return insertMovie;
	}
}
