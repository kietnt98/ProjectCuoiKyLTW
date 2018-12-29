package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import BEAN.Test;
import Model.DBConnection;
public class AddTestDAO {
	public static boolean AddTest(Test test) {
		Connection conn = DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		boolean rowAdd= false; 
		String sql = "EXEC ThemDeThi ?,?,?,?,?,?";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, test.getTimestart());
			ptmt.setString(2, test.getTimeend());
			ptmt.setInt(3, test.getTime());
			ptmt.setInt(4, test.getNumber_question());
			ptmt.setInt(5, test.getTesttypeid());
			ptmt.setInt(6, test.getSubjectid());
		    rowAdd = ptmt.executeUpdate() > 0;
		    ptmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rowAdd;
	}

}
