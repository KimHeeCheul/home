package com.board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
@Repository
public class BoardDao {
		
	public Board selectByNo(int n) throws Exception {
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		String user = "jdeveloper37";
		String password = "jdeveloper37";
		
		Board findBoard = null;
		
		String selectSQL1="select * from board2 where b_no ="+n;
		
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(selectSQL1);
		
		if(rs.next()) {
			int no = rs.getInt("b_no");
			String title = rs.getString("b_title");
			String write = rs.getString("b_write");
			String content = rs.getString("b_content");
			String date = rs.getString("b_date");
			
			findBoard = new Board(no, title, write, content, date);
		}
		
		rs.close();
		stmt.close();
		con.close();
		return findBoard;
	}
	
	public List<Board> selectAll() throws Exception {
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		String user = "jdeveloper37";
		String password = "jdeveloper37";
		
		List<Board> boardList = new ArrayList<Board>();
		String selectSQL="select * from board2";
		
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(selectSQL);
		
		if(rs.next()) {
			do {
				int no = rs.getInt("b_no");
				String title = rs.getString("b_title");
				String write = rs.getString("b_write");
				String content = rs.getString("b_content");
				String date = rs.getString("b_date");
				boardList.add(new Board(no,title,write,content,date));
			}while(rs.next());
		}else {
			System.out.println("X");
		}
		
		rs.close();
		stmt.close();
		con.close();
		
		return boardList;
	}
	
	public int insert(Board board)throws Exception{
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		String user = "jdeveloper37";
		String password = "jdeveloper37";
		
		String insertSQL="insert into board2 values('"+board.getNo()+"','"+board.getTitle()+"','"+board.getWrite()+"','"+board.getContent()+"','"+board.getDate()+"')";
		
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		
		int insertCount = stmt.executeUpdate(insertSQL);
		
		stmt.close();
		con.close();
		
		return insertCount;
	}
	
	/* getter, setter 가 없을경우 db로 들어가지 않는것 같다
	public int insert(int no, String title, String write, String content, String date) throws Exception {
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		String user = "jdeveloper37";
		String password = "jdeveloper37";
		
		String insertSQL="insert into board2 values('"+no+"','"+title+"','"+write+"','"+content+"','"+date+"')";
		
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		
		int insertCount = stmt.executeUpdate(insertSQL);
		
		stmt.close();
		con.close();
		
		return insertCount;
	}
	*/
	
	public int update(Board board) throws Exception {
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		String user = "jdeveloper37";
		String password = "jdeveloper37";
		
		String updateSQL="update board2 set b_title='"+board.getTitle()+"', b_write='"+board.getWrite()+"', b_content='"+board.getContent()+"', b_date='"+board.getDate()+"' where b_no="+board.getNo();
		
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		
		int updateCount = stmt.executeUpdate(updateSQL);
		
		stmt.close();
		con.close();
		
		return updateCount;
	}
	
	public int delete(int no) throws Exception {
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		String user = "jdeveloper37";
		String password = "jdeveloper37";
		
		String deleteSQL="delete from board2 where b_no="+no;
		
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		
		int deleteCount = stmt.executeUpdate(deleteSQL);
		
		stmt.close();
		con.close();
		
		return deleteCount; 
	}
	
}
