package com.itflix.dto;

public class User_Info {
	
	private String u_email;
	private String u_pass;
	private String u_name;
	private String u_phone;
	
	public User_Info() {
		// TODO Auto-generated constructor stub
	}

	public User_Info(String u_email, String u_pass, String u_name, String u_phone) {
		super();
		this.u_email = u_email;
		this.u_pass = u_pass;
		this.u_name = u_name;
		this.u_phone = u_phone;
	}

	public String getU_email() {
		return u_email;
	}

	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

	public String getU_pass() {
		return u_pass;
	}

	public void setU_pass(String u_pass) {
		this.u_pass = u_pass;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getU_phone() {
		return u_phone;
	}

	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}

	@Override
	public String toString() {
		return "User_Info [u_email=" + u_email + ", u_pass=" + u_pass + ", u_name=" + u_name + ", u_phone=" + u_phone
				+ "]";
	}
	
}
