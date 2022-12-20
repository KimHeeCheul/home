package com.board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class BoardDao {
	@Autowired	
	private DataSource dataSource;
	
	public Board selectByNo(int b_n) throws Exception {
		
		Board findBoard = null;
		String selectSQL1="select * from board2 where b_no ="+b_n;
		
		Connection con = dataSource.getConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(selectSQL1);
		
		if(rs.next()) {
			int b_no = rs.getInt("b_no");
			String b_title = rs.getString("b_title");
			String b_write = rs.getString("b_write");
			String b_content = rs.getString("b_content");
			String b_date = rs.getString("b_date");
			
			findBoard = new Board(b_no, b_title, b_write, b_content, b_date);
		}
		
		rs.close();
		stmt.close();
		con.close();
		return findBoard;
	}
	
	public List<Board> selectAll() throws Exception {
		
		List<Board> boardList = new ArrayList<Board>();
		String selectSQL="select * from board2";
		
		Connection con = dataSource.getConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(selectSQL);
		
		if(rs.next()) {
			do {
				int b_no = rs.getInt("b_no");
				String b_title = rs.getString("b_title");
				String b_write = rs.getString("b_write");
				String b_content = rs.getString("b_content");
				String b_date = rs.getString("b_date");
				boardList.add(new Board(b_no, b_title, b_write, b_content, b_date));
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
		String insertSQL="insert into board2 values('"+board.getB_no()+"','"+board.getB_title()+"','"+board.getB_write()+"','"+board.getB_content()+"','"+board.getB_date()+"')";
		
		Connection con = dataSource.getConnection();
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
		//String driverClass = "oracle.jdbc.OracleDriver";
		//String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		//String user = "F2205JDEVELOPER#TEAM1";
		//String password = "F2205JDEVELOPER#TEAM1";
		
		String updateSQL="update board2 set b_title='"+board.getB_title()+"', b_write='"+board.getB_write()+"', b_content='"+board.getB_content()+"', b_date='"+board.getB_date()+"' where b_no="+board.getB_no();
		
		//Class.forName(driverClass);
		//Connection con = DriverManager.getConnection(url, user, password);
		Connection con = dataSource.getConnection();
		Statement stmt = con.createStatement();
		
		int updateCount = stmt.executeUpdate(updateSQL);
		
		stmt.close();
		con.close();
		
		return updateCount;
	}
	
	public int delete(int b_no) throws Exception {
		String deleteSQL="delete from board2 where b_no="+b_no;
		
		Connection con = dataSource.getConnection();
		Statement stmt = con.createStatement();
		
		int deleteCount = stmt.executeUpdate(deleteSQL);
		
		stmt.close();
		con.close();
		
		return deleteCount; 
	}
	
}
