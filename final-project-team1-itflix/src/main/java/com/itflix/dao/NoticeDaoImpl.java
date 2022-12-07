package com.itflix.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itflix.dto.Notice;
import com.itflix.mapper.Notice_Mapper;


@Repository
public class NoticeDaoImpl implements NoticeDao{
	
	@Autowired
	private Notice_Mapper notice_Mapper;
	
	public NoticeDaoImpl() {
	}
	
	public NoticeDaoImpl(Notice_Mapper notice_Mapper) {
		this.notice_Mapper = notice_Mapper;
	}
	public void setNotice_Mapper(Notice_Mapper notice_Mapper) {
		this.notice_Mapper = notice_Mapper;
	}

	
	
	//공지사항 전체 출력
	@Override
	public List<Notice> selectAll()throws Exception{
		List<Notice> selectAll = notice_Mapper.selectAll();
		return selectAll;
	}
	
	//공지사항 전체 갯수 출력
	@Override
	public int totalCount()throws Exception{
		int totalCount = notice_Mapper.totalCount();
		return totalCount;
	}
	
	//공지사항 타이틀 키워드별 갯수 출력
	@Override
	public int totalKeywordCount(String n_title)throws Exception{
		int totalKeywordCount= notice_Mapper.totalKeywordCount(n_title);
		return totalKeywordCount;
	}
	
	//가장 최신 공지사항 1개 출력 
	@Override
	public Notice noticeOne()throws Exception{
		Notice noticeOne= notice_Mapper.noticeOne();
		return noticeOne;
	}
	
	
	//공지사항 번호로 검색
	@Override
	public Notice selectByNo(int n_no)throws Exception{
		Notice notice= notice_Mapper.selectByNo(n_no);
		return notice;
	}
	
	//공지사항 이름으로 검색
	@Override
	public List<Notice> selectByTitle(String n_title)throws Exception{
		List<Notice> noticeList = notice_Mapper.selectByTitle(n_title);
		return noticeList;
	}
	
	// 게시물 리스트를 반환(게시물시작번호,게시물끝번호)
	@Override
	public List<Notice> selectNoticeList(int start, int last) throws Exception {
		List<Notice> noticeList = notice_Mapper.selectNoticeList(start, last);
		System.out.println("" + start + " ~ " + last);
		Map<String, Integer> map = new HashMap<>();
		map.put("start", start);
		map.put("last", last);
		return noticeList;
	}
	
	
	
	
	/**************구현 미정**************/
	//공지사항 추가 
	@Override
	public int insertNotice(Notice notice)throws Exception{
		int insertNotice = notice_Mapper.insertNotice(notice);
		return insertNotice;
	}
	
	//공지사항 변경 
	@Override
	public int updateNotice(Notice notice)throws Exception{
		int updateNotice = notice_Mapper.updateNotice(notice);
		return updateNotice;
	}
	
	//공지사항 삭제 
	@Override
	public int deleteNotice(int n_no)throws Exception{
		int deleteNotice = notice_Mapper.deleteNotice(n_no);
		return deleteNotice;
	}
	/**************구현 미정**************/
	
}
