package practice.board.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DeleteMain {

	public static void main(String[] args) throws Exception {
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
