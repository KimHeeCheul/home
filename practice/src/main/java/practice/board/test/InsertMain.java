package practice.board.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class InsertMain {

	public static void main(String[] args) throws Exception {
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@182.237.126.19:1521:xe";
		String user = "jdeveloper37";
		String password = "jdeveloper37";
		
		String insertSQL1="insert into board2 values(6,'테스트','김','테스트',sysdate)";
		
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		
		int insertCount1 = stmt.executeUpdate(insertSQL1);
		
		System.out.println(insertCount1);
		
		stmt.close();
		con.close();
	}
}
