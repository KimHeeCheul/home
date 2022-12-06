package com.board;
	//데이타 베이스 컬럼의 데이타를 담아서 전달해 줄 수 있는 객체
	//data트랜스퍼 object = dto
	//dto all은 컬렉션 
public class Board {
	int no;
	String title;
	String write;
	String content;
	String date;
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	public Board(int no, String title, String write, String content, String date) {
		super();
		this.no = no;
		this.title = title;
		this.write = write;
		this.content = content;
		this.date = date;
	}
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWrite() {
		return write;
	}

	public void setWrite(String write) {
		this.write = write;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Board [no=" + no + ", title=" + title + ", write=" + write + ", content=" + content + ", date=" + date
				+ "]";
	}

}
