package com.itflix.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itflix.dao.NoticeDao;
import com.itflix.dto.Notice;
import com.itflix.dto.PageMaker;
import com.itflix.dto.PageMakerDto;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDao noticeDao;
	
	public NoticeServiceImpl() throws Exception{

	}
	
	public NoticeDao getNoticeDao() {
		return noticeDao;
	}


	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}


	//공지사항 리스트 페이징
	@Override
	public PageMakerDto<Notice> selectNoticeList(int currentPage) throws Exception {
		// 1.전체글의 갯수
		int totRecordCount = noticeDao.totalCount(); 
		// 2.paging계산(PageMaker 유틸클래스) 
		PageMaker pageMaker = new PageMaker(totRecordCount, currentPage, 10, 10);
		// 3.게시물데이타 얻기
		List<Notice> noticeList = noticeDao.selectNoticeList(pageMaker.getPageBegin(), pageMaker.getPageEnd());
		PageMakerDto<Notice> pageMakerNoticeList = new PageMakerDto<Notice>(noticeList, pageMaker, totRecordCount);
		return pageMakerNoticeList;
	}
	
	//공지사항 전체 출력
	@Override
	public List<Notice> selectAll() throws Exception {
		return noticeDao.selectAll();
	}
	
	//공지사항 전체 갯수 출력
	@Override
	public int totalCount() throws Exception {
		return noticeDao.totalCount();
	}
	
	//공지사항 타이틀 키워드별 갯수 출력
	@Override
	public int totalKeywordCount(String n_title)throws Exception{
		return noticeDao.totalKeywordCount(n_title);
	}
	//가장 최신 공지사항 1개 출력 
	@Override
	public Notice noticeOne()throws Exception{
		return noticeDao.noticeOne();
	}
	
	//공지사항 번호로 검색
	@Override
	public Notice selectByNo(int n_no) throws Exception {
		return noticeDao.selectByNo(n_no);
	}
	
	//공지사항 이름으로 검색
	@Override
	public List<Notice> selectByTitle(String n_title) throws Exception {
		return noticeDao.selectByTitle(n_title);
	}

	/**************구현 미정**************/
	//공지사항 추가
	@Override
	public int insertNotice(Notice notice) throws Exception {
		return noticeDao.insertNotice(notice);
	}
	
	//공지사항 변경
	@Override
	public int updateNotice(Notice notice) throws Exception {
		return noticeDao.updateNotice(notice);
	}
	
	//공지사항 삭제
	@Override
	public int deleteNotice(int n_no) throws Exception {
		return noticeDao.deleteNotice(n_no);
	/**************구현 미정**************/
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
