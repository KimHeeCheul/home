package com.itflix.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itflix.dao.TicketDao;
import com.itflix.dto.Ticket;

@Service
public class TicketServiceImpl implements TicketService {
	@Autowired
	private TicketDao ticketDao;

	public TicketServiceImpl() throws Exception {
		System.out.println("T_ServiceImpl test1");
	}

	public TicketDao getTicket_Dao() {
		System.out.println("T_get test2");
		return ticketDao;
	}

	public void setTicketDao(TicketDao ticketDao) {
		System.out.println("T_set test3");
		this.ticketDao = ticketDao;
	}

	// 상품 보기
	@Override
	public List<Ticket> selectAll() throws Exception {
		return ticketDao.selectAll();
	}

	// 추가
	@Override
	public int insertTicket(Ticket ticket) throws Exception {
		return ticketDao.insertTicket(ticket);
	}

	// 수정
	@Override
	public int updateTicket(Ticket ticket) throws Exception {
		return ticketDao.updateTicket(ticket);
	}

	// 삭제
	@Override
	public int deleteTicket(int no) throws Exception {
		return ticketDao.deleteTicket(no);
	}

}
