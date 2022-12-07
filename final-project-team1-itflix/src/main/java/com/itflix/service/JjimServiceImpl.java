package com.itflix.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itflix.dao.JjimDao;
import com.itflix.dto.Jjim;

@Service
public class JjimServiceImpl implements JjimService{

	@Autowired
	private JjimDao jjimDao;
	
	public JjimServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	
	public JjimServiceImpl(JjimDao jjimDao) {
		this.jjimDao = jjimDao;
	}

	public void setJjimDao(JjimDao jjimDao) {
		this.jjimDao = jjimDao;
	}
	
	/* 1명 회원 영화 찜 목록보기(리뷰평점포함) */
	@Override
	public List<Jjim> jjimList(String u_email) throws Exception {
		return jjimDao.jjimList(u_email);
	}
	
	 /* 1명 회원 영화 찜 카테고리별 목록보기 */
	public List<Jjim> jjimCategoryList(String u_email,int cg_no)throws Exception{
		return jjimDao.jjimCategoryList(u_email, cg_no);
	}
	
	/* 영화 찜하기 */
	@Override
	public int jjimInsert(String u_email, int m_no) throws Exception {
		return jjimDao.jjimInsert(u_email, m_no);
	}

	/* 영화 찜하기 해제 */
	@Override
	public int jjimDelete(String u_email, int m_no) throws Exception {
		return jjimDao.jjimDelete(u_email, m_no);
	}
	
	/* 리뷰의 총평점 조인안하고 불러오기*/
	@Override
	public List<Jjim> jjimListTest5(String u_email) throws Exception {
		return jjimDao.jjimListTest5(u_email);
	}

	@Override
	public boolean jjimUser(String u_email, int m_no) throws Exception {
		return jjimDao.jjimUser(u_email, m_no);
	}

	/*유저 찜 영화 갯수*/
	@Override
	public int jjimCount(String u_email) throws Exception {
		return jjimDao.jjimCount(u_email);
	}


}
