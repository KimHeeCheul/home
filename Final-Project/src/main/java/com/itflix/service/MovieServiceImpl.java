package com.itflix.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itflix.dao.MovieDao;
import com.itflix.dto.Movie;

@Service
public class MovieServiceImpl implements MovieService {
	
	@Autowired()
	private MovieDao movieDao;
	
	public MovieServiceImpl() throws Exception{
		
	}
	
	public MovieDao getCategoryDao() {
		return movieDao;
	}


	public void setMovieDao(MovieDao movieDao) {
		this.movieDao = movieDao;
	}
	
	//영화 전체 리스트(필터링x)
	public List<Movie> selectAllNoFilter()throws Exception{
		return movieDao.selectAllNoFilter();
	}
	//영화 리스트 전체 출력
	@Override
	public List<Movie> selectAll() throws Exception {
		return movieDao.selectAll();
	}

	//영화 번호로 출력
	@Override
	public Movie selectByNo(int no) throws Exception {
		return movieDao.selectByNo(no);
	}

	//카테고리 번호로 출력
	@Override
	public List<Movie> selectCategoryNo(int no) throws Exception {
		return movieDao.selectCategoryNo(no);
	}

	//영화 제목으로 검색
	@Override
	public List<Movie> selectMovieName(String name) throws Exception {
		return movieDao.selectMovieName(name);
	}
	
	//영화 검색 결과 카운트
	public int searchCount (String m_name)throws Exception{
		return movieDao.searchCount(m_name);
	}
	
	
	//영화 출연진 이름으로 검색
	@Override
	public List<Movie> selectMovieActor(String name) throws Exception {
		return movieDao.selectMovieActor(name);
	}
	
	//가장 최근 작성된 리뷰 평점 출력
	@Override
	public Movie selectMovieRecentReview(int no) throws Exception {
		return movieDao.selectMovieRecentReview(no);
	}
	
	//조회수 높은 순으로 출력
	@Override
	public List<Movie> selectMovieCountList() throws Exception {
		return movieDao.selectMovieCountList();
	}
	
	//평점 높은 순으로 출력
	@Override
	public List<Movie> selectMovieGradeList() throws Exception {
		return movieDao.selectMovieGradeList();
	}

	//영화 개봉일 최신순으로 출력
	@Override
	public List<Movie> selectMovieNewDate() throws Exception {
		return movieDao.selectMovieNewDate();
	}

	//영화 개봉일 오래된 순으로 출력
	@Override
	public List<Movie> selectMovieOldDate() throws Exception {
		return movieDao.selectMovieOldDate();
	}

	//영화 번호로 평점 출력
	@Override
	public Movie selectMovieGradeByNo(int no) throws Exception {
		return movieDao.selectMovieGradeByNo(no);
	}
	
	//영화 번호로 조회수 출력
	@Override
	public Movie selectMovieCountByNo(int no) throws Exception {
		return movieDao.selectMovieCountByNo(no);
	}

	//영화 클릭수 증가
	@Override
	public int movieCountPlus(int no) throws Exception {
		return movieDao.movieCountPlus(no);
	}

	//영화 변경
	@Override
	public int updateMovie(Movie movie) throws Exception {
		return movieDao.updateMovie(movie);
	}

	//영화 삭제
	@Override
	public int deleteMovie(int no) throws Exception {
		return movieDao.deleteMovie(no);
	}
	//영화 전체 총 갯수
	@Override
	public int movieAllCount()throws Exception{
		return movieDao.movieAllCount();
	}
	
	//배우 이름으로 영화 검색
	@Override
	public List<Movie> searchActor(String name) throws Exception {
		return movieDao.searchActor(name);
	}
	
	//영화 이름으로 영화 검색
	@Override
	public List<Movie> searchMovie(String name) throws Exception {
		return movieDao.searchMovie(name);
	}
	//영화 추가
	@Override
	public int insertMovie(int m_no, String m_name, String m_actor, String m_info, String m_image, int m_count,
			Date m_date, String m_url, int m_groupno, int m_step, int m_depth, int cg_no) throws Exception {
		return movieDao.insertMovie(m_no, m_name, m_actor, m_info, m_image, m_count, m_date, m_url, m_groupno, m_step, m_depth, cg_no);
	}
	
}
