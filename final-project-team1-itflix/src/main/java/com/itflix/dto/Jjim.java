package com.itflix.dto;

import java.util.List;

public class Jjim {
	
	private int j_groupno;
	private int j_step;
	private int j_depth;
	
	private List<User_Info> userList;
	private List<Movie> movieList;
	
	public Jjim() {
		// TODO Auto-generated constructor stub
	}

	public Jjim(int j_groupno, int j_step, int j_depth, List<User_Info> userList, List<Movie> movieList) {
		super();
		this.j_groupno = j_groupno;
		this.j_step = j_step;
		this.j_depth = j_depth;
		this.userList = userList;
		this.movieList = movieList;
	}

	public int getJ_groupno() {
		return j_groupno;
	}

	public void setJ_groupno(int j_groupno) {
		this.j_groupno = j_groupno;
	}

	public int getJ_step() {
		return j_step;
	}

	public void setJ_step(int j_step) {
		this.j_step = j_step;
	}

	public int getJ_depth() {
		return j_depth;
	}

	public void setJ_depth(int j_depth) {
		this.j_depth = j_depth;
	}

	public List<User_Info> getUserList() {
		return userList;
	}

	public void setUserList(List<User_Info> userList) {
		this.userList = userList;
	}

	public List<Movie> getMovieList() {
		return movieList;
	}

	public void setMovieList(List<Movie> movieList) {
		this.movieList = movieList;
	}

	@Override
	public String toString() {
		return "Jjim [j_groupno=" + j_groupno + ", j_step=" + j_step + ", j_depth=" + j_depth + ", userList=" + userList
				+ ", movieList=" + movieList + "]";
	}

	

	

}