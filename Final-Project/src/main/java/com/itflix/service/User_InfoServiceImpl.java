package com.itflix.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itflix.dao.User_InfoDao;
import com.itflix.dto.User_Info;

@Service
public class User_InfoServiceImpl implements User_InfoService{
	
	@Autowired
	private User_InfoDao user_InfoDao;
	
	public User_InfoServiceImpl() throws Exception {
		
	}
	
	public User_InfoDao getUser_InfoDao() {
		return user_InfoDao;
	}

	public void setUser_InfoDao(User_InfoDao user_InfoDao) {
		this.user_InfoDao = user_InfoDao;
	}

	// 회원 추가.
	@Override
	public int insertUser_Info(User_Info user_Info) throws Exception{
		/*
		 * 회원가입 아이디 중복 검사
		 * 
		 * -1 : 아이디 중복
		 * 1  : 회원가입 성공
		 */
		
		if(user_InfoDao.existedUser(user_Info.getU_email())) {
			//중복일 시 -1 반환
			return -1;
		}else {
			//회원가입 성공
			int rowCount = user_InfoDao.insertUser_Info(user_Info);
			return rowCount; 
		}
		
	}
	
	// 이메일이랑 이름으로 비번 찾기.
	@Override
	public User_Info selectByEmailAndName(String u_email, String u_name) throws Exception{
		return user_InfoDao.selectByEmailAndName(u_email, u_name);
	}
	
	// 이름이랑 폰번호로 이메일 찾기.
	@Override
	public User_Info selectByNameAndPhone(String u_name, String u_phone) throws Exception{
		return user_InfoDao.selectByNameAndPhone(u_name, u_phone);
	}
	
	// 이메일로 회원 찾기.
	@Override
	public User_Info selectByEmail(String u_email) throws Exception{
		return user_InfoDao.selectByEmail(u_email);
	}
	
	// 전체 회원 찾기.
	@Override
	public List<User_Info> selectAll() throws Exception{
		return user_InfoDao.user_InfoSelectAll();
	}

	// 회원 수정.
	@Override
	public int updateUser_Info(User_Info user_Info) throws Exception{
		return user_InfoDao.updateUser_Info(user_Info);
	}
	
	@Override
	public boolean existedUser(String u_email) throws Exception {
		return user_InfoDao.existedUser(u_email);
	}
	
	//로그인
	@Override
	public int login(String u_email, String u_pass) throws Exception {
		int result = 0;
		/*
		 *  1:성공
		 * -1:비밀번호 불일치
		 * -2:존재하지 않는 회원
		 */
		if(user_InfoDao.existedUser(u_email)) {
			User_Info userInfo = user_InfoDao.selectByEmail(u_email);
			if(userInfo.getU_pass().equals(u_pass)) {
				// 로그인 성공
				result = 1;
			} else {
				// 비번 불일치
				result = -1;
			}
		} else  { 
			// 존재하지 않는 이메일
			result = -2;
		}
		return result;
	}

	/*회원탈퇴*/
	@Override
	public int removeUser(String u_email) throws Exception {
		return user_InfoDao.removeUser(u_email);
	}

}
