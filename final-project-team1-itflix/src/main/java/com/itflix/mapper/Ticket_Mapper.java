package com.itflix.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itflix.dto.Ticket;

@Mapper
public interface Ticket_Mapper {

	@Select("select * from ticket")
	public List<Ticket> selectAll();

	@Insert("insert into ticket values(#{t_no},#{t_price})")
	public int insertTicket(Ticket ticket);

	@Update("update ticket set t_price=#{t_price} where t_no=#{t_no}")
	public int updateTicket(Ticket ticket);

	@Delete("delete from ticket where t_no=#{t_no}")
	public int deleteTicket(int no);

	
}