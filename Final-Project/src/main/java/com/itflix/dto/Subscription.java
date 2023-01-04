package com.itflix.dto;

import java.util.Date;

public class Subscription {

	private int s_no;
	private Date s_start;
	private Date s_end;
	private String s_cardName;
	private int s_cardNumber;
	private Ticket ticket;
	private User_Info user_Info;

	public Subscription() {

	}

	public Subscription(int s_no, Date s_start, Date s_end, String s_cardName, int s_cardNumber, Ticket ticket,
			User_Info user_Info) {
		super();
		this.s_no = s_no;
		this.s_start = s_start;
		this.s_end = s_end;
		this.s_cardName = s_cardName;
		this.s_cardNumber = s_cardNumber;
		this.ticket = ticket;
		this.user_Info = user_Info;
	}

	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_no) {
		this.s_no = s_no;
	}

	public Date getS_start() {
		return s_start;
	}

	public void setS_start(Date s_start) {
		this.s_start = s_start;
	}

	public Date getS_end() {
		return s_end;
	}

	public void setS_end(Date s_end) {
		this.s_end = s_end;
	}

	public String getS_cardName() {
		return s_cardName;
	}

	public void setS_cardName(String s_cardName) {
		this.s_cardName = s_cardName;
	}

	public int getS_cardNumber() {
		return s_cardNumber;
	}

	public void setS_cardNumber(int s_cardNumber) {
		this.s_cardNumber = s_cardNumber;
	}

	public Ticket getTicket() {
		return ticket;
	}

	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}

	public User_Info getUser_Info() {
		return user_Info;
	}

	public void setUser_Info(User_Info user_Info) {
		this.user_Info = user_Info;
	}

	@Override
	public String toString() {
		return "Subscription [s_no=" + s_no + ", s_start=" + s_start + ", s_end=" + s_end + ", s_cardName=" + s_cardName
				+ ", s_cardNumber=" + s_cardNumber + ", ticket=" + ticket + ", user_Info=" + user_Info + "]";
	}

}
