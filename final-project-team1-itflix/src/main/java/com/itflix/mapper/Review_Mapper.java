package com.itflix.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.itflix.dto.Review;

@Mapper
public interface Review_Mapper {

	// 리뷰 목록 전체 출력
	@Select("select * from review")
	public List<Review> selectAll();

	// 본인 리뷰 보기(회원아이디 리뷰 보기)
	@Select("select r.r_no,r.r_title, r.r_content, r.r_grade, r.r_date ,u.u_email,m.m_no,m.m_name,m.m_date,c.cg_name\n"
			+ "from review r \n"
			+ "join user_info u on u.u_email=r.u_email \n"
			+ "join movie m on r.m_no = m.m_no\n"
			+ "join category c on m.cg_no = c.cg_no\n"
			+ "where u.u_email = '${u_email}'")
	@ResultMap("ReviewWithUserList")
	public List<Review> selectWroteReview(String u_email);

	/*
	 * // 최신 리뷰 출력
	 * 
	 * @Select("select r.r_no, u.u_email, r.r_title, r.r_content, r.r_grade, r.r_date from user_info u join review r on u.u_email = r.u_email order by r.r_date desc"
	 * ) public List<Review> selectLatest();
	 */
	// 리뷰 번호를 선택하여 1개 출력
	@Select("select * from review where r_no=#{r_no}")
	public Review selectByNo(int r_no);

	// 리뷰 삭제
	@Delete("delete from review where r_no=#{r_no}")
	public int deleteReview(int no);
	
	// 리뷰 추가
	//public int insertReview(Review review);
	@Insert("insert into review VALUES (#{r_no}, #{r_title}, #{r_content}, #{r_grade}, sysdate, #{r_groupno}, #{r_step}, #{r_depth}, #{m_no}, #{u_email})")
	@SelectKey(statement = "select REVIEW_R_NO_SEQ.nextval from dual", keyProperty = "r_no",before = true, resultType = Integer.class)
	//@ResultMap("ReviewWithMovieandUser")
	public int insertReview(int r_no, String r_title, String r_content, int r_grade, Date r_date, int r_groupno, int r_step, int r_depth, int m_no, String u_email);
	
	// 리뷰 수정
	@Update("update review set r_title=#{r_title},r_content=#{r_content},r_grade=#{r_grade} where r_no=#{r_no}")
	//@ResultMap("ReviewWithUpdate")
	public int updateReview(String r_title, String r_content, int r_grade, int r_no);
	
	// -- 각 영화 별 최신 리뷰
	//@Select("select  r.r_no, m.m_no, u.u_email, r.r_title, r.r_content, r.r_grade, r.r_date from user_info u left join review r on u.u_email = r.u_email left join movie m on m.m_no=r.m_no where m.m_no=#{m_no} order by r.r_date desc")
	@Select("select  r.r_no, m.m_no, u.u_email, r.r_title, r.r_content, r.r_grade, r.r_date from review r left join user_info u on u.u_email = r.u_email left join movie m on m.m_no=r.m_no where m.m_no=${m_no} order by r.r_date desc")
	@ResultMap("ReviewWithLatest")
	public List<Review> selectLatest(int m_no);

	// 각 영화 리뷰 총 갯수
	@Select("select count(*) from review where m_no = ${m_no}")
	public int reviewCount(int m_no);
	
	// 계정별 리뷰 총 갯수
	@Select("select count(*) from review where u_email = #{u_email}")
	public int reviewCountByEmail(String u_email);
	
	// 리뷰 추가
	@Insert("insert into review VALUES (#{r_no}, #{r_title}, #{r_content}, #{r_grade}, sysdate, #{r_groupno}, #{r_step}, #{r_depth}, #{m_no}, #{u_email})")
	@SelectKey(statement = "select REVIEW_R_NO_SEQ.nextval from dual", keyProperty = "r_no",before = true, resultType = Integer.class)
	public Review insertReview2(Review review);

}