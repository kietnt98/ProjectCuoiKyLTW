package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import BEAN.Test;
import Model.DBConnection;

public class DeleteTestDAO {
	public static boolean DeleteTest(Test test) {
		Connection conn = DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		boolean rowDelete= false; 
		String sql = "EXEC XoaDeThi ?";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, test.getTestid());
		    rowDelete = ptmt.executeUpdate() > 0;
		    ptmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rowDelete;
	}
}
