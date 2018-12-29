package DAO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.PreparedStatement;

import BEAN.Account;
import Model.DBConnection;
public class UserDAO {
	public static Account GetUser(int maUser) {
		Connection conn = DBConnection.CreateConnection();
		Account existuser = new Account();
		PreparedStatement ptmt = null;
		String sql = "Select * From users where user_id = ?" ;
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, maUser);
			ResultSet result = ptmt.executeQuery();
			 if (result.next()) {
				 int ma = result.getInt("user_id");
					String username= result.getString("username");
					System.out.println(username);
					String password= result.getString("password");
					String fullname= result.getString("fullname");
					String birthday= result.getString("birthday");
					String country= result.getString("country");
					String phone= result.getString("phone");
					String img= result.getString("img");
					int roleid = result.getInt("role_id");
					int classid = result.getInt("class_id");
					existuser = new Account(ma, username, password, fullname, birthday, country, phone, img, roleid, classid);
		        }
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return existuser;
	}
}
