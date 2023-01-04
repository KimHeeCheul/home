package com.itflix.dao;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itflix.dto.Subscription;
import com.itflix.dto.Ticket;
import com.itflix.dto.User_Info;
import com.itflix.mapper.Subscription_Mapper;

@Repository
public class SubscriptionDaoImpl implements SubscriptionDao{

	@Autowired
	private Subscription_Mapper subscription_Mapper;
	
	public SubscriptionDaoImpl() {
		
	}
	
	public SubscriptionDaoImpl(Subscription_Mapper subscription_Mapper) {
		this.subscription_Mapper = subscription_Mapper;
	}
	
	public void setSubscription_Mapper(Subscription_Mapper subscription_Mapper) {
		this.subscription_Mapper = subscription_Mapper;
	}

	//전체 구독자리스트
	@Override
	public List<Subscription> selectListAll() throws Exception {
		List<Subscription> subscriptionList = subscription_Mapper.selectListAll();
		return subscriptionList;
	}
	

	//구독시작날짜 찾기
	@Override
	public Subscription selectByStDate(String u_email) throws Exception {
		Subscription s_start = subscription_Mapper.selectByStDate(u_email);
		return s_start;
	}

	//구독만료날짜 찾기
	@Override
	public Subscription selectByEndDate(String u_email) throws Exception {
		Subscription s_end = subscription_Mapper.selectByStDate(u_email);
		return s_end;
	}

	//구독자 단일 찾기
	@Override
	public Subscription selectByNo(String u_email) throws Exception {
		Subscription s_no = subscription_Mapper.selectByStDate(u_email);
		return s_no;
	}
	
	//구독권 추가
	@Override
	public int insertSubscription(int s_no, Date s_start,Date e_end,String s_cardName,int cardNumber,int t_no, String u_email) throws Exception {
		int subscription1 = subscription_Mapper.insertSubscription(s_no, s_start, e_end, s_cardName, cardNumber, t_no, u_email);
		return subscription1;
	}
	
	//구독권 업데이트
	@Override
	public int updateSubscription(Date s_start, Date s_end, String s_cardName, int s_cardNumber, int t_no, String u_email) throws Exception {
		int subscription = subscription_Mapper.updateSubscription(s_start,s_end,s_cardName,s_cardNumber,t_no, u_email);
		return subscription;
	}
	
	//구독권 연장
	@Override
	public int updateEndDate(Date s_start, Date s_end, String s_cardName, int s_cardNumber, int t_no, String u_email)throws Exception {
		int subscription = subscription_Mapper.updateEndDate(s_start,s_end,s_cardName,s_cardNumber,t_no, u_email);
		return subscription;
	}
	
	//구독 삭제
	@Override
	public int deleteSubscription(String u_email) throws Exception {
		int deleteSubscrtion =subscription_Mapper.deleteSubscription(u_email);
		return deleteSubscrtion;
	}

	//구독권 구매자 찾기
	@Override
	public Subscription selectBuyTicket(String u_email) throws Exception {
		Subscription selectBuyTicket = subscription_Mapper.selectBuyTicket(u_email);
		return selectBuyTicket;
	}


	
}
