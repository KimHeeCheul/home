package com.itflix.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.itflix.dto.Prefer;

@Mapper
public interface Prefer_Mapper {

	//회원별 prefer 조회(선호카테고리 조회)
	@Select("select u_email, cg_no from prefer where u_email = #{u_email}")
	@ResultMap("selecCgByEmail")
	public List<Prefer> selecCgByEmail(String u_email);
	//선호카테고리 삭제
	@Delete("delete from prefer where u_email=#{u_email} and cg_no=#{cg_no}")
	public int preferDelete(String u_email,int cg_no);
	//선호카테고리 선택
	@Insert("insert into prefer values (1,0,0,#{u_email},#{cg_no})")
	public int preferInsert(String u_email,int cg_no);
	
	
	//총평점없이 회원선호카테고리 영화리스트 불러오기
	@Select("select p.cg_no,m.m_no,m.m_name,m.m_image,m.m_date,m.m_count from prefer p LEFT join movie m on p.cg_no=m.cg_no where p.u_email=#{u_email} and p.cg_no=#{cg_no}")
	@ResultMap("selectPreferCgMovieList")
	public List<Prefer> selectPreferCgMovieList(String u_email,int cg_no);
	
	
	//회원별 관심카테고리(넘버)로 관련 영화 출력 sql문 (PREFER,무비,리뷰 테이블 그룹화 및 조인) --
	//(출력: 카테고리번호,영화등록번호,영화장르,영화이름,영화이미지,영화개봉일,영화클릭수,리뷰평균평점(리뷰평점 NULL 포함)) -- 
	//guard1@gmail.com 의 카테고리 6 번 관련 영화 전체 출력(리뷰평점 NULL 포함)
	
	@Select("select p.cg_no,\n"
			+ "       m.m_no,\n"
			+ "       m.m_name,\n"
			+ "       m.m_image,\n"
			+ "       m.m_date,\n"
			+ "       m.m_count,\n"
			+ "       avg(r.r_grade) \n"
			+ "from prefer p left join movie m\n"
			+ "on p.cg_no = m.cg_no\n"
			+ "left join review r\n"
			+ "on m.m_no=r.m_no\n"
			+ "where p.u_email=#{u_email} and p.cg_no=#{cg_no}\n"
			+ "group by p.cg_no,\n"
			+ "         m.m_no,\n"
			+ "         m.m_name,\n"
			+ "         m.m_image,\n"
			+ "         m.m_date,\n"
			+ "         m.m_count\n"
			+ "ORDER By avg(r.r_grade) desc")
	@ResultMap("test")
	public List<Prefer> selectPreferCgMovieList222(String u_email,int cg_no);

}