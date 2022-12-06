package practice.board.test1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

public class BoardDao {

	public void selectByNo() throws Exception {
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		String user = "jdeveloper37";
		String password = "jdeveloper37";
		
		String selectSQL1="select * from board2 where b_no = 2";
		
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(selectSQL1);
		
		if(rs.next()) {
			int b_no = rs.getInt("b_no");
			String b_title = rs.getString("b_title");
			String b_write = rs.getString("b_write");
			String b_content = rs.getString("b_content");
			String b_date = rs.getString("b_date");
			System.out.println(b_no+" "+b_title+" "+b_write+" "+b_content+" "+b_date);
		}else {
			System.out.println("X");
		}
		rs.close();
		stmt.close();
		con.close();
		//return; 이 생략되어있다
	}
	
	public void selectAll() throws Exception {
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		String user = "jdeveloper37";
		String password = "jdeveloper37";
		
		String selectSQL1="select * from board2";
		
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(selectSQL1);
		
		if(rs.next()) {
			do {
				int b_no = rs.getInt("b_no");
				String b_title = rs.getString("b_title");
				String b_write = rs.getString("b_write");
				String b_content = rs.getString("b_content");
				String b_date = rs.getString("b_date");
				System.out.println(b_no+" "+b_title+" "+b_write+" "+b_content+" "+b_date);
				}
			while(rs.next());
		}else {
			System.out.println("X");
		}
		rs.close();
		stmt.close();
		con.close();
	}
	public void insert() throws Exception {
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		String user = "jdeveloper37";
		String password = "jdeveloper37";
		
		String insertSQL1="insert into board2 values(6,'테스트','김','테스트','2022/11/18')";
		
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		
		int insertCount1 = stmt.executeUpdate(insertSQL1);
		
		System.out.println(insertCount1);
		
		stmt.close();
		con.close();
	}
	public void update() throws Exception {
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		String user = "jdeveloper37";
		String password = "jdeveloper37";
		
		String updateSQL1="update board2 set b_title='업데이트',b_write='희' , b_content='테스트',b_date='2022/11/17' where b_no=1";
		
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		
		int updateCount1 = stmt.executeUpdate(updateSQL1);
		
		System.out.println(updateCount1);
		
		stmt.close();
		con.close();
	}
	public void delete() throws Exception {
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		String user = "jdeveloper37";
		String password = "jdeveloper37";
		
		String deleteSQL1="delete from board2 where b_no=1";
		
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		
		int deleteCount1 = stmt.executeUpdate(deleteSQL1);
		
		System.out.println(deleteCount1);
		
		stmt.close();
		con.close();
	}
	
}
