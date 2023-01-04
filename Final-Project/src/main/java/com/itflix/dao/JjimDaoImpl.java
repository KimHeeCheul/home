package com.itflix.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itflix.dto.Jjim;
import com.itflix.mapper.Jjim_Mapper;

@Repository
public class JjimDaoImpl implements JjimDao {
	
	@Autowired
	private Jjim_Mapper jjim_Mapper;
	
	public JjimDaoImpl() {
	
	}
	
	public JjimDaoImpl(Jjim_Mapper jjim_Mapper) {
		this.jjim_Mapper = jjim_Mapper;
	}
	
	public void setJjim_Mapper(Jjim_Mapper jjim_Mapper) {
		this.jjim_Mapper = jjim_Mapper;
	}

		
	/* 1명 회원 영화 찜 목록보기(리뷰평점포함) */
	@Override
	public List<Jjim> jjimList(String u_email) throws Exception {
		List<Jjim> jjimList =jjim_Mapper.jjimList(u_email);
		return jjimList;
	}
	/* 1명 회원 영화 찜 목록보기(리뷰평점포함) */
	@Override
	public List<Jjim> jjimCategoryList(String u_email,int cg_no) throws Exception {
		List<Jjim> jjimCategoryList =jjim_Mapper.jjimCategoryList(u_email, cg_no);
		return jjimCategoryList;
	}
	
	/* 영화 찜하기 (u_email 에 m_no로 저장*)*/
	@Override
	public int jjimInsert(String u_email,int m_no) throws Exception {
		int jjimInsert = jjim_Mapper.jjimInsert(u_email,m_no);
		return jjimInsert;
	}
	
	/* 영화 찜하기 해제 (u_email 에서 m_no 로 삭제)*/
	@Override
	public int jjimDelete(String u_email,int m_no) throws Exception {
		int jjimDelete = jjim_Mapper.jjimDelete(u_email,m_no);
		return jjimDelete;
	}
	
	/* 리뷰의 총평점 조인안하고 불러오기*/
	@Override
	public List<Jjim> jjimListTest5(String u_email) throws Exception{
		List<Jjim> jjimListTest5 = jjim_Mapper.jjimListTest5(u_email);
	return jjimListTest5;
	}
	
	//유저 이름에 찜한 영화 존재 여부 확인
	@Override
	public boolean jjimUser(String u_email,int m_no)throws Exception{
		boolean jjimUser=jjim_Mapper.jjimUser(u_email, m_no);
		return jjimUser;
		
	}

	/*유저 찜 영화 갯수*/
	@Override
	public int jjimCount(String u_email) throws Exception {
		int jjimCount = jjim_Mapper.jjimCount(u_email);
		return jjimCount;
	}
	 
	 
}

