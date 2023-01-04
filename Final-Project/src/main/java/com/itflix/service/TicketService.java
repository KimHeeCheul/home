package com.itflix.service;

import java.util.List;

import com.itflix.dto.Ticket;

public interface TicketService {

	// 상품 보기
	List<Ticket> selectAll() throws Exception;

	// 추가
	int insertTicket(Ticket ticket) throws Exception;

	// 수정
	int updateTicket(Ticket ticket) throws Exception;

	// 삭제
	int deleteTicket(int no) throws Exception;



	
}
