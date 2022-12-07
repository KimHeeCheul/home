package com.itflix.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itflix.dto.Ticket;
import com.itflix.mapper.Ticket_Mapper;

@Repository
public class TicketDaoImpl implements TicketDao {

	@Autowired
	private Ticket_Mapper ticket_Mapper;

	public TicketDaoImpl() {
		System.out.println("T_DaoImpl test3");
	}

	public TicketDaoImpl(Ticket_Mapper ticket_Mapper) throws Exception {
		System.out.println("T_DaoImpl test4");
		this.ticket_Mapper = ticket_Mapper;
	}

	public void setTicket_Mapper(Ticket_Mapper ticket_Mapper) {
		this.ticket_Mapper = ticket_Mapper;
	}

	// 상품 보기
	@Override
	public List<Ticket> selectAll() throws Exception {
		List<Ticket> TicketList = ticket_Mapper.selectAll();
		return TicketList;
	}

	// 추가
	@Override
	public int insertTicket(Ticket ticket) throws Exception {
		int insertTicket = ticket_Mapper.insertTicket(ticket);
		return insertTicket;
	}

	// 수정
	@Override
	public int updateTicket(Ticket ticket) throws Exception {
		int updateTicket = ticket_Mapper.updateTicket(ticket);
		return updateTicket;
	}

	// 삭제
	@Override
	public int deleteTicket(int no) throws Exception {
		int deleteTicket = ticket_Mapper.deleteTicket(no);
		return deleteTicket;
	}

}
