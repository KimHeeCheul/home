package com.itflix.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.itflix.dto.Category;

@Mapper
public interface Category_Mapper {

	// 카테고리 목록 전체 출력
	@Select("select * from Category")
	public List<Category> selectAll();

	// 카테고리 번호를 이용하여 카테고 1개 출력
	@Select("select * from Category where cg_no=#{cg_no}")
	public Category selectByNo(int cg_no);

	// 카테고리 이름을 이용하여 1개 출력
	@Select("select * from Category where cg_name = #{cg_name}")
	public Category selectByName(String cg_name);

	// 카테고리 1개 추가
	@Insert("insert into category values(#{cg_no},#{cg_name})")
	@SelectKey(statement = "select CATEGORY_CG_NO_SEQ.nextval from dual", keyProperty = "cg_no",before = true, resultType = Integer.class)
	public int insertCategory(Category category);

	// 카테고리 이름을 변경
	@Update("update Category set cg_name = #{cg_name} where cg_no = #{cg_no}")
	public int updateCategory(Category category);

	// 카테고리 1개 삭제
	@Delete("delete from category where cg_no = #{cg_no}")
	public int deleteCategory(int cg_no);

	
	//카테고리 번호를 이용하여 해당 카테고리에 영화 리스트 출력
	@Select("select c.cg_no,c.cg_name,m.m_name,m.m_image,m.m_date, avg(r.r_grade)\n"
			+ "from category c \n"
			+ "join movie m on c.cg_no = m.cg_no\n"
			+ "left OUTER join review r on r.m_no = m.m_no\n"
			+ "where c.cg_no = 1\n"
			+ "group by c.cg_no,c.cg_name,m.m_name,m.m_image,m.m_date\n"
			+ "order by m_date desc") 
	@ResultMap("findeCategoryMovieListResultMap")
	public List<Category> selectByNoMovieList(Integer cg_no);
	 
	//카테고리별  영화 한개 상세 상세페이지 검색 (리뷰 추가 -리뷰없을시 null표시)
	@Select("select * from(select c.cg_no,c.cg_name,m.m_no, m.m_name,m.m_actor,m.m_info,m.m_image,m.m_date,m.m_url,r.r_no,r.r_title,r.r_content,r.r_date,r.r_grade from category c join movie m on m.cg_no = c.cg_no left JOIN review r on r.m_no = m.m_no where c.cg_no = #{cg_no} AND m.m_no=#{m_no} GROUP BY c.cg_no,c.cg_name,m.m_no ,m.m_name,m.m_actor,m.m_info,m.m_image,m.m_date,m.m_url,r.r_no,r.r_title,r.r_content,r.r_date, r.r_grade ORDER BY r.r_date DESC) where ROWNUM<=1")
	@ResultMap("findCategoryMovieDetailReviewResultMap")
	public Category selectByNoByM_NoAndReview(Integer cg_no, Integer m_no);
		
	//카테고리별 영화 총 갯수
	@Select("select count(*) from category c join movie m on c.cg_no=m.cg_no where c.cg_no=#{cg_no}")
	public int countCategory(Integer cg_no);
	
	//찜한 유저의 카테고리별 영화 갯수
	@Select("select count(*) \n"
			+ "from category c \n"
			+ "join movie m \n"
			+ "on c.cg_no=m.cg_no\n"
			+ "join jjim j \n"
			+ "on j.m_no=m.m_no \n"
			+ "where j.u_email = #{u_email} and c.cg_no=#{cg_no}")
	public int countJjim(String u_email,int cg_no);
	
}