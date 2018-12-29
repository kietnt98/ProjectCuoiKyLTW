package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import BEAN.Account;
import Model.DBConnection;

public class AddUserDAO {
	public static boolean AddUser(Account acc) {
		Connection conn = DBConnection.CreateConnection();
		PreparedStatement ptmt = null;
		boolean rowAdd= false; 
		String sql = "EXEC ThemTK ?,?,?,?,?,?,?,?,?";
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, acc.getUsername());
			ptmt.setString(2, acc.getPass());
			ptmt.setString(3, acc.getFullname());
			ptmt.setString(4, acc.getBirthday());
			ptmt.setString(5, acc.getCountry());
			ptmt.setString(6, acc.getPhone());
			ptmt.setString(7, acc.getImage());
			ptmt.setInt(8, acc.getRoleid());
			ptmt.setInt(9, acc.getClassid());
		    rowAdd = ptmt.executeUpdate() > 0;
		    ptmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rowAdd;
	}

}
