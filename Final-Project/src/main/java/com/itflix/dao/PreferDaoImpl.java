package com.itflix.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itflix.dto.Prefer;
import com.itflix.mapper.Prefer_Mapper;

@Repository
public class PreferDaoImpl implements PreferDao {

	@Autowired
	private Prefer_Mapper prefer_Mapper;

	public PreferDaoImpl() {

	}

	public PreferDaoImpl(Prefer_Mapper prefer_Mapper) {

		this.prefer_Mapper = prefer_Mapper;
	}

	public void setPrefer_Mapper(Prefer_Mapper prefer_Mapper) {
		this.prefer_Mapper = prefer_Mapper;
	}

	// 회원별 prefer 조회(선호카테고리 조회)
	@Override
	public List<Prefer> selecCgByEmail(String u_email) throws Exception {
		List<Prefer> selecCgByEmail = prefer_Mapper.selecCgByEmail(u_email);
		return selecCgByEmail;
	}

	@Override
	public int preferDelete(String u_email, int cg_no) throws Exception {
		int preferDelete = prefer_Mapper.preferDelete(u_email, cg_no);
		return preferDelete;
	}

	@Override
	public int preferInsert(String u_email, int cg_no) throws Exception {
		int preferInsert = prefer_Mapper.preferInsert(u_email, cg_no);
		return preferInsert;
	}

	@Override
	public List<Prefer> selectPreferCgMovieList(String u_email, int cg_no) throws Exception {
		List<Prefer> selectPreferCgMovieList = prefer_Mapper.selectPreferCgMovieList(u_email, cg_no);
		return selectPreferCgMovieList;
	}

	@Override
	public List<Prefer> selectPreferCgMovieList222(String u_email, int cg_no) throws Exception {
		List<Prefer> selectPreferCgMovieList222 = prefer_Mapper.selectPreferCgMovieList222(u_email, cg_no);
		return selectPreferCgMovieList222;
	}



}
