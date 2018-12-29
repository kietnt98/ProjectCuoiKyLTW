package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import BEAN.Account;
import Model.DBConnection;

public class DeleteUserDAO {
	public static boolean DeleteUser(Account acc) {
		Connection conn = DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		boolean rowDelete= false; 
		String sql = "EXEC XoaTK ?";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, acc.getUserid());
		    rowDelete = ptmt.executeUpdate() > 0;
		    ptmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rowDelete;
	}
}
