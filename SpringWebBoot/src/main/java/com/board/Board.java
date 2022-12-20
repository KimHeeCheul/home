package com.board;

//데이타 베이스 컬럼의 데이타를 담아서 전달해 줄 수 있는 객체
//data트랜스퍼 object = dto
//dto all은 컬렉션 
public class Board {
	int b_no;
	String b_title;
	String b_write;
	String b_content;
	String b_date;

	public Board() {
		// TODO Auto-generated constructor stub
	}

	public Board(int b_no, String b_title, String b_write, String b_content, String b_date) {
		super();
		this.b_no = b_no;
		this.b_title = b_title;
		this.b_write = b_write;
		this.b_content = b_content;
		this.b_date = b_date;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getB_title() {
		return b_title;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public String getB_write() {
		return b_write;
	}

	public void setB_write(String b_write) {
		this.b_write = b_write;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public String getB_date() {
		return b_date;
	}

	public void setB_date(String b_date) {
		this.b_date = b_date;
	}

	@Override
	public String toString() {
		return "Board [b_no=" + b_no + ", b_title=" + b_title + ", b_write=" + b_write + ", b_content=" + b_content
				+ ", b_date=" + b_date + "]";
	}

}
