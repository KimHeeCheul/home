package com.itflix.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.itflix.dto.Notice;

@Mapper
public interface Notice_Mapper {
	
	//공지사항 전체 출력
	@Select("select * from notice")
	public List<Notice> selectPageList();
	
	//공지사항 전체 출력
	@Select("select * from notice order by n_date Desc")
	public List<Notice> selectAll();
	
	//공지사항 전체 갯수 출력
	@Select("select count(*) from Notice")
	public int totalCount();
	
	//공지사항 타이틀 키워드별 갯수 출력
	@Select("select count(*) from Notice where n_title like '%'||#{n_title}||'%'")
	public int totalKeywordCount(String n_title);
	
	//가장 최신 공지사항 1개 출력 
	@Select("select * from(select * from notice ORDER BY n_date DESC) where rownum<=1")
	public Notice noticeOne();
	
	//공지사항 번호로 검색
	@Select("select * from notice where n_no = #{n_no}")
	public Notice selectByNo(int n_no);
	
	//공지사항 이름으로 검색
	@Select("select * from notice where n_title like  '%'||#{n_title}||'%' ")
	public List<Notice> selectByTitle(String n_title);
	
	//공지사항 페이징
	@Select("SELECT * FROM (SELECT rownum idx, s.*  FROM (SELECT n_no, n_date, n_title, n_content, n_groupno, n_step, n_depth FROM Notice ORDER BY n_groupno DESC,n_step ASC) s) WHERE idx >= #{start} AND idx <= #{last} ")
	public List<Notice> selectNoticeList(int start, int last);
	
	/**************구현 미정**************/
	//공지사항 추가 
	@Insert("insert into notice (n_no,n_date,n_title,n_content,n_groupno,n_step,n_depth)values(#{n_no},sysdate,#{n_title},#{n_content},#{n_groupno},#{n_step},#{n_depth})")
	@SelectKey(statement = "select Notice_n_no_SEQ.nextval from dual",keyProperty = "n_no",before = true,resultType =Integer.class )
	public int insertNotice(Notice notice);
	
	//공지사항 변경 
	@Update("update notice set n_date=sysdate,n_title=#{n_title},n_content=#{n_content},n_groupno=#{n_groupno},n_step=#{n_step},n_depth=#{n_depth} where n_no =#{n_no} ")
	public int updateNotice(Notice notice);
	
	//공지사항 삭제 
	@Delete("delete from notice where n_no=#{n_no}")
	public int deleteNotice(int n_no);
	/**************구현 미정**************/
	
	
	
	
}