package practice.board.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

public class SelectByNoMain {

	public static void main(String[] args) throws Exception {
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
			//Date b_date = rs.getDate("b_date");
			System.out.println(b_no+" "+b_title+" "+b_write+" "+b_content+" "+b_date);
		}else {
			System.out.println("X");
		}
		rs.close();
		stmt.close();
		con.close();
	}
}
