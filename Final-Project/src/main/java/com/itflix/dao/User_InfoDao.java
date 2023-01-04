package com.itflix.dao;

import java.util.List;

import com.itflix.dto.User_Info;


public interface User_InfoDao {
	
	// 회원 추가.
	int insertUser_Info(User_Info User_info) throws Exception;
	// 이메일이랑 이름으로 비번 찾기.
	User_Info selectByEmailAndName(String u_email, String u_name) throws Exception;
	// 이름이랑 폰번호로 이메일 찾기.
	User_Info selectByNameAndPhone(String u_name, String u_phone) throws Exception;
	// 이메일로 회원 찾기.
	User_Info selectByEmail(String u_email) throws Exception;
	// 전체 회원 찾기.
	List<User_Info> user_InfoSelectAll() throws Exception;
	// 회원 수정.
	int updateUser_Info(User_Info guest) throws Exception;
	// 회원 email 존재여부 확인(count)
	boolean existedUser(String u_email) throws Exception;
	/*회원탈퇴*/
	int removeUser(String u_email) throws Exception;
}
