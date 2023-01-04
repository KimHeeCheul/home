package com.itflix.dto;

import java.util.Date;
import java.util.List;

public class Review {
		
	private int r_no;
	private String r_title;
	private String r_content;
	private int r_grade;
	private Date r_date;
	private int r_groupno;
	private int r_step;
	private int r_depth;
	private Movie movie;
	private List<User_Info> userList;
	private User_Info user_Info;
	
	public Review() {
		// TODO Auto-generated constructor stub
	}

	public Review(int r_no, String r_title, String r_content, int r_grade, Date r_date, int r_groupno, int r_step,
			int r_depth, Movie movie, List<User_Info> userList, User_Info user_Info) {
		super();
		this.r_no = r_no;
		this.r_title = r_title;
		this.r_content = r_content;
		this.r_grade = r_grade;
		this.r_date = r_date;
		this.r_groupno = r_groupno;
		this.r_step = r_step;
		this.r_depth = r_depth;
		this.movie = movie;
		this.userList = userList;
		this.user_Info = user_Info;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public String getR_title() {
		return r_title;
	}

	public void setR_title(String r_title) {
		this.r_title = r_title;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public int getR_grade() {
		return r_grade;
	}

	public void setR_grade(int r_grade) {
		this.r_grade = r_grade;
	}

	public Date getR_date() {
		return r_date;
	}

	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}

	public int getR_groupno() {
		return r_groupno;
	}

	public void setR_groupno(int r_groupno) {
		this.r_groupno = r_groupno;
	}

	public int getR_step() {
		return r_step;
	}

	public void setR_step(int r_step) {
		this.r_step = r_step;
	}

	public int getR_depth() {
		return r_depth;
	}

	public void setR_depth(int r_depth) {
		this.r_depth = r_depth;
	}

	public Movie getMovie() {
		return movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}

	public List<User_Info> getUserList() {
		return userList;
	}

	public void setUserList(List<User_Info> userList) {
		this.userList = userList;
	}

	public User_Info getUser_Info() {
		return user_Info;
	}

	public void setUser_Info(User_Info user_Info) {
		this.user_Info = user_Info;
	}

	@Override
	public String toString() {
		return "Review [r_no=" + r_no + ", r_title=" + r_title + ", r_content=" + r_content + ", r_grade=" + r_grade
				+ ", r_date=" + r_date + ", r_groupno=" + r_groupno + ", r_step=" + r_step + ", r_depth=" + r_depth
				+ ", movie=" + movie + ", userList=" + userList + ", user_Info=" + user_Info + "]";
	}
	
}
