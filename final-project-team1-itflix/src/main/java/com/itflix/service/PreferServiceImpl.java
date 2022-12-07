package com.itflix.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itflix.dao.PreferDao;
import com.itflix.dto.Prefer;

@Service
public class PreferServiceImpl implements PreferService {
	
	@Autowired
	private PreferDao preferDao;
	
	public PreferServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	public PreferServiceImpl(PreferDao preferDao) {
		super();
		this.preferDao = preferDao;
	}
	
	public void setPreferDao(PreferDao preferDao) {
		this.preferDao = preferDao;
	}

	@Override
	public List<Prefer> selecCgByEmail(String u_email) throws Exception {
		return preferDao.selecCgByEmail(u_email);
	}

	@Override
	public int preferDelete(String u_email, int cg_no) throws Exception {
		return preferDao.preferDelete(u_email, cg_no);
	}

	@Override
	public int preferInsert(String u_email, int cg_no) throws Exception {
		return preferDao.preferInsert(u_email, cg_no);
	}

	@Override
	public List<Prefer> selectPreferCgMovieList(String u_email, int cg_no) throws Exception {
		return preferDao.selectPreferCgMovieList(u_email, cg_no);
	}

	

}
