package com.itflix.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itflix.dto.User_Info;

@Mapper
public interface User_Info_Mapper {
	
	// 회원 추가.
	@Insert("insert into User_Info values(#{u_email}, #{u_pass}, #{u_name}, #{u_phone})")
	public int insertUser_Info(User_Info user_Info);
	
	// 이메일이랑 이름으로 비번 찾기.
	@Select("select u_name,u_email,u_phone,u_pass from user_info where u_email = #{u_email} and u_name = #{u_name}")
	public User_Info selectByEmailAndName(String u_email, String u_name);
	
	// 이름이랑 폰번호로 이메일 찾기.
	@Select("select u_email,u_name,u_phone from user_info where u_name = #{u_name} and u_phone = #{u_phone}")
	public User_Info selectByNameAndPhone(String u_name, String u_phone);
	
	// 이메일로 회원 찾기.
	@Select("select * from user_info where u_email = #{u_email}")
	public User_Info selectByEmail(String u_email);

	// 전체 회원 찾기.
	@Select("SELECT * FROM USER_INFO ORDER BY U_EMAIL DESC")
	//@ResultMap("User_InfoResultMap")
	public List<User_Info> selectAll();
	
	// 회원 수정.
	@Update("update user_info set u_pass=#{u_pass}, u_name=#{u_name}, u_phone=#{u_phone} where u_email=#{u_email}")
	public int updateUser_Info(User_Info user_Info);
	
	/*회원탈퇴*/
	@Delete("delete from user_info where u_email=#{u_email, jdbcType=VARCHAR}")
	public int removeUser(String u_email);
	
	// 회원 email 존재여부 확인(count)
	@Select("select count(*) from user_info where u_email=#{u_email}")
	public boolean existedUser(String u_email);
	
}
