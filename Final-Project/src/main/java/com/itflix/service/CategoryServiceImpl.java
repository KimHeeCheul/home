package com.itflix.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itflix.dao.CategoryDao;
import com.itflix.dto.Category;

@Service
public class CategoryServiceImpl implements CategoryService{
	
	@Autowired
	private CategoryDao categoryDao;
	
	public CategoryServiceImpl() throws Exception{
		System.out.println("C_ServiceImpl");
	}
	
	public CategoryDao getCategoryDao() {
		return categoryDao;
	}


	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}

	 //카테고리 번호를 이용한 해당 영화 리스트 출력
	 @Override 
	 public List<Category> selectByNoMovieList(int cg_no) throws Exception{
		 return categoryDao.selectByNoMovieList(cg_no); 
	 }
	 //카테고리별  영화 한개 상세 상세페이지 검색 (리뷰 추가 -리뷰없을시 null표시)
	 @Override
	 public Category selectByNoByM_NoAndReview(int cg_no, int m_no) throws Exception {
		return categoryDao.selectByNoByM_NoAndReview(cg_no, m_no);
	 }
	 
	
	//카테고리 전체 출력
	@Override
	public List<Category> selectAll() throws Exception{
		return categoryDao.selectAll();
	}
	
	//카테고리 번호를 이용한 찾기
	@Override
	public Category selectByNo(int no)throws Exception {
		return categoryDao.selectByNo(no);
	}
	
	//카테고리 이름을 이용한 찾기
	@Override
	public Category selectByName(String name)throws Exception{
		return categoryDao.selectByName(name);
	}
	
	//카테고리 추가
	@Override
	public int insertCategory(Category category)throws Exception{
		return categoryDao.insertCategory(category);
	}
	
	//카테고리 변경
	@Override
	public int updateCategory(Category category)throws Exception{
		return categoryDao.updateCategory(category);
	}
	
	//카테고리 삭제
	@Override
	public int deleteCategory(int no)throws Exception{
		return categoryDao.deleteCategory(no);
	}
	//카테고리별 영화 총 갯수
	@Override
	public int countCategory(Integer cg_no) throws Exception {
	return categoryDao.countCategory(cg_no);
	}
	
	//찜한 유저의 카테고리별 영화 갯수
	@Override
	public int countJjim(String u_email, int cg_no) throws Exception {
		return categoryDao.countJjim(u_email, cg_no);
	}

	
	
}
