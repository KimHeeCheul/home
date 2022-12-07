package com.itflix.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.itflix.dto.Jjim;

@Mapper
public interface Jjim_Mapper {
	
	/* 1명 회원 영화 찜 목록보기 */
	@Select("select j.u_email,\r\n"
			+ "        m.m_no,\r\n"
			+ "        m.cg_no, \r\n"
			+ "        c.cg_name,\r\n"
			+ "        m.m_name,\r\n"
			+ "        m.m_image,\r\n"
			+ "        m.m_date,\r\n"
			+ "        m.m_count,\r\n"
			+ "        avg(r.r_grade) as r_grade \r\n"
			+ "from movie m \r\n"
			+ "left join review r \r\n"
			+ "on m.m_no=r.m_no \r\n"
			+ "left join category c \r\n"
			+ "on m.cg_no=c.cg_no     \r\n"
			+ "left join jjim j \r\n"
			+ "on m.m_no=j.m_no \r\n"
			+ "where j.u_email=#{u_email}\r\n"
			+ "group by j.u_email,\r\n"
			+ "         m.m_no,\r\n"
			+ "         m.cg_no,\r\n"
			+ "         c.cg_name,\r\n"
			+ "         m.m_name,\r\n"
			+ "         m.m_image,\r\n"
			+ "         m.m_date,\r\n"
			+ "         m.m_count")
	@ResultMap("Test")
	public List<Jjim> jjimList(String u_email);
	
	/* 1명 회원 영화 찜 카테고리별 목록보기 */
	@Select("select j.u_email, m.m_no, m.cg_no, c.cg_name, m.m_name, m.m_image, m.m_date, m.m_count, avg(r.r_grade) as r_grade\r\n"
			+ "from movie m \r\n"
			+ "left join review r on m.m_no=r.m_no \r\n"
			+ "left join category c on m.cg_no=c.cg_no \r\n"
			+ "left join jjim j on m.m_no=j.m_no \r\n"
			+ "where j.u_email=#{u_email} and m.cg_no=#{cg_no}\r\n"
			+ "group by j.u_email, m.m_no, m.cg_no, c.cg_name, m.m_name, m.m_image, m.m_date, m.m_count")
	@ResultMap("Test")
	public List<Jjim> jjimCategoryList(String u_email,int cg_no);
	
	/* 영화 찜하기*/
	@Insert("insert into jjim VALUES(0,0,0,#{u_email},#{m_no})")
	public int jjimInsert(String u_email,int m_no);
	
	/* 영화 찜하기 해제*/
	@Delete("delete from jjim where u_email=#{u_email} and m_no=#{m_no}")
	public int jjimDelete(String u_email,int m_no);
	
	/* 리뷰의 총평점 조인안하고 불러오기*/  
	@Select("select j.u_email, j.m_no, m.m_name, m.m_image, m.m_date, m.m_count, m.cg_no from jjim j join user_info u on j.u_email = u.u_email join movie m on j.m_no = m.m_no where j.u_email=#{u_email}")
	@ResultMap("jjimListTest4")
	public List<Jjim> jjimListTest5(String u_email);
	
	//유저 이름에 찜한 영화 존재 여부 확인 
	@Select("select COUNT(*) from jjim j join user_info u on u.u_email = j.u_email where j.u_email=#{u_email} and j.m_no=#{m_no}")
	//@ResultMap("jjimUserResult")
	public boolean jjimUser(String u_email,int m_no);
	
	/*유저 찜 영화 갯수*/
	@Select("select count(*) from Jjim where u_email=#{u_email}")
	public int jjimCount(String u_email);
	
	
}