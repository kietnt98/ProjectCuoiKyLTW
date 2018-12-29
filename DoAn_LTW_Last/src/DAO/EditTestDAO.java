package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import BEAN.Test;
import Model.DBConnection;

public class EditTestDAO {
	public static boolean EditTest(Test test) {
		Connection conn = DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		boolean rowEdit= false; 
		String sql = "EXEC SuaDeThi ?,?,?,?,?";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, test.getTestid());
			ptmt.setString(2, test.getTimestart());
			ptmt.setString(3, test.getTimeend());
			ptmt.setInt(4, test.getTime());
			ptmt.setInt(5, test.getNumber_question());
		    rowEdit = ptmt.executeUpdate() > 0;
		    ptmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rowEdit;
	}
}
