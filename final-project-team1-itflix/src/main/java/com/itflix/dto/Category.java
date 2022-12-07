package com.itflix.dto;

import java.util.List;

public class Category {

	private int cg_no;
	private String cg_name;
	private Movie movie;
	private List<Movie> movieList;

	public Category() {
		// TODO Auto-generated constructor stub
	}

	public Category(int cg_no, String cg_name, Movie movie, List<Movie> movieList) {
		super();
		this.cg_no = cg_no;
		this.cg_name = cg_name;
		this.movie = movie;
		this.movieList = movieList;
	}

	public int getCg_no() {
		return cg_no;
	}

	public void setCg_no(int cg_no) {
		this.cg_no = cg_no;
	}

	public String getCg_name() {
		return cg_name;
	}

	public void setCg_name(String cg_name) {
		this.cg_name = cg_name;
	}

	public Movie getMovie() {
		return movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}

	public List<Movie> getMovieList() {
		return movieList;
	}

	public void setMovieList(List<Movie> movieList) {
		this.movieList = movieList;
	}

	@Override
	public String toString() {
		return "Category [cg_no=" + cg_no + ", cg_name=" + cg_name + ", movie=" + movie + ", movieList=" + movieList
				+ "]";
	}
	
	
	
	

}
