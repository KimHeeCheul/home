package com.itflix.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itflix.dto.User_Info;
import com.itflix.mapper.User_Info_Mapper;

@Repository
public class User_InfoDaoImpl implements User_InfoDao {

	@Autowired
	private User_Info_Mapper user_Info_Mapper;

	public User_InfoDaoImpl() {

	}

	public User_InfoDaoImpl(User_Info_Mapper user_Info_Mapper) {
		this.user_Info_Mapper = user_Info_Mapper;
	}

	public void setUser_Info_Mapper(User_Info_Mapper user_Info_Mapper) {
		this.user_Info_Mapper = user_Info_Mapper;
	}

	// 회원 추가
	@Override
	public int insertUser_Info(User_Info User_Info) throws Exception {
		int insertUser_Info = user_Info_Mapper.insertUser_Info(User_Info);
		return insertUser_Info;
	}

	// 이메일이랑 이름으로 비밀번호 찾기.
	@Override
	public User_Info selectByEmailAndName(String u_email, String u_name) throws Exception {
		User_Info user_Info = user_Info_Mapper.selectByEmailAndName(u_email, u_name);
		return user_Info;
	}

	// 이름이랑 핸드폰 번호로 이메일 찾기.
	@Override
	public User_Info selectByNameAndPhone(String u_name, String u_phone) throws Exception {
		User_Info user_info = user_Info_Mapper.selectByNameAndPhone(u_name, u_phone);
		return user_info;
	}

	// 이메일로 회원 찾기.
	@Override
	public User_Info selectByEmail(String u_email) throws Exception {
		User_Info user_Info = user_Info_Mapper.selectByEmail(u_email);
		return user_Info;
	}

	// 전체회원찾기. 안쓸듯.
	@Override
	public List<User_Info> user_InfoSelectAll() throws Exception {
		List<User_Info> user_InfoList = user_Info_Mapper.selectAll();
		return user_InfoList;
	}

	// 회원수정
	@Override
	public int updateUser_Info(User_Info user_info) throws Exception {
		int updateUser_Info = user_Info_Mapper.updateUser_Info(user_info);
		return updateUser_Info;
	}

	// 회원 email 존재여부 확인(count)
	@Override
	public boolean existedUser(String u_email) throws Exception {
		boolean existedUser = user_Info_Mapper.existedUser(u_email);
		return existedUser;
	}
	
	/*회원탈퇴*/
	@Override
	public int removeUser(String u_email) throws Exception {
		int removeUser = user_Info_Mapper.removeUser(u_email);
		return removeUser;
	}
}
