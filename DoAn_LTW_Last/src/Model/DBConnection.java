package Model;
import java.sql.*;
public class DBConnection {
	public static Connection CreateConnection()
	{
Connection conn= null;

		
		String url="jdbc:sqlserver://localhost:1433;databaseName=ThiTracNghiemOnline";
		String username="thanhvien1";
		String password="123";
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			try {
				conn = DriverManager.getConnection(url, username, password);
				System.out.println("Connected successfully hihi...");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
