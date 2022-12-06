package practice.board.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class UpdateMain {

	public static void main(String[] args) throws Exception {
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		String user = "jdeveloper37";
		String password = "jdeveloper37";
		
		String updateSQL1="update board2 set b_title='업데이트',b_write='희' , b_content='테스트',b_date='2022/11/16' where b_no=1";
		
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		
		int updateCount1 = stmt.executeUpdate(updateSQL1);
		
		System.out.println(updateCount1);
		
		stmt.close();
		con.close();
		
	}
}
