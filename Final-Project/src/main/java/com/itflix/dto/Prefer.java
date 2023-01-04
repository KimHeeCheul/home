package com.itflix.dto;

import java.util.List;

public class Prefer {
	
	private int p_groupno;
	private int p_step;
	private int p_depth;
	private List<User_Info> userList;
	private List<Category> categoryList;
	
	public Prefer() {
		// TODO Auto-generated constructor stub
	}

	public Prefer(int p_groupno, int p_step, int p_depth, List<User_Info> userList, List<Category> categoryList) {
		super();
		this.p_groupno = p_groupno;
		this.p_step = p_step;
		this.p_depth = p_depth;
		this.userList = userList;
		this.categoryList = categoryList;
	}

	public int getP_groupno() {
		return p_groupno;
	}

	public void setP_groupno(int p_groupno) {
		this.p_groupno = p_groupno;
	}

	public int getP_step() {
		return p_step;
	}

	public void setP_step(int p_step) {
		this.p_step = p_step;
	}

	public int getP_depth() {
		return p_depth;
	}

	public void setP_depth(int p_depth) {
		this.p_depth = p_depth;
	}

	public List<User_Info> getUserList() {
		return userList;
	}

	public void setUserList(List<User_Info> userList) {
		this.userList = userList;
	}

	public List<Category> getCategoryList() {
		return categoryList;
	}

	public void setCategoryList(List<Category> categoryList) {
		this.categoryList = categoryList;
	}

	@Override
	public String toString() {
		return "Prefer [p_groupno=" + p_groupno + ", p_step=" + p_step + ", p_depth=" + p_depth + ", userList="
				+ userList + ", categoryList=" + categoryList + "]";
	}

		
}
