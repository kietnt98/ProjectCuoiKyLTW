package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import BEAN.Account;
import Model.DBConnection;

public class EditUserDAO {

	public static boolean EditUser(Account acc) {
		Connection conn = DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		boolean rowDelete= false; 
		String sql = "EXEC SuaTK ?,?,?,?,?,?,?,?";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, acc.getUserid());
			ptmt.setString(2, acc.getUsername());
			ptmt.setString(3, acc.getFullname());
			ptmt.setString(4, acc.getBirthday());
			ptmt.setString(5, acc.getCountry());
			ptmt.setString(6, acc.getPhone());
			ptmt.setString(7, acc.getImage());
			ptmt.setInt(8, acc.getClassid());
		    rowDelete = ptmt.executeUpdate() > 0;
		    ptmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rowDelete;
	}
}
