package com.itflix.dto;

public class Ticket {
	
	private int t_no;
	private String t_price;
	
	public Ticket() {
		// TODO Auto-generated constructor stub
	}

	public Ticket(int t_no, String t_price) {
		super();
		this.t_no = t_no;
		this.t_price = t_price;
	}

	public int getT_no() {
		return t_no;
	}

	public void setT_no(int t_no) {
		this.t_no = t_no;
	}

	public String getT_price() {
		return t_price;
	}

	public void setT_price(String t_price) {
		this.t_price = t_price;
	}

	@Override
	public String toString() {
		return "Ticket [t_no=" + t_no + ", t_price=" + t_price + "]";
	}
	
	
	
	
}
